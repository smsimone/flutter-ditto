library hardcoded_strings;

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:path/path.dart' as p;

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:hardcoded_strings/main.dart';
import 'package:hardcoded_strings/visitors/block_visitor.dart';
import 'package:hardcoded_strings/visitors/element_visitor.dart';
import 'package:mutex/mutex.dart';

PluginBase createPlugin() => _HardcodedStringsLinter();

class _HardcodedStringsLinter extends PluginBase {
  late final List<String> _availableKeys;
  final _initializationCompleter = Completer();
  final _mutex = Mutex();

  Uri _containsKeyFile(Uri uri) {
    try {
      if (uri.pathSegments.length == 1) {
        throw Exception('Failed to find keys file, have you generated it?');
      }

      final dirPath = p.dirname(uri.path);
      final dir = Directory.fromUri(Uri.parse(dirPath));
      if (dir.existsSync()) {
        final files = dir.listSync();
        final isContained = files.any((t) => t.path.contains(keysFilename));
        if (!isContained) return _containsKeyFile(dir.uri);
        return dir.uri;
      }
      throw Exception('dir $uri does not exists');
    } catch (e) {
      log(
        'Failed to find keys file',
        error: e,
        name: 'flutter_ditto',
      );
      return uri;
    }
  }

  @override
  Stream<Lint> getLints(ResolvedUnitResult unit) async* {
    if (unit.path.contains('test')) return;

    if (!_initializationCompleter.isCompleted) {
      log('Loading keys file', name: 'flutter_ditto_init');
      await _mutex.acquire();
      if (!_initializationCompleter.isCompleted) {
        try {
          final folder = _containsKeyFile(Uri.parse(unit.path));
          log('Project folder is: $folder', name: 'flutter_ditto');
          final dir = Directory(folder.path);
          final keysFile = File('${dir.path}/$keysFilename');
          if (!keysFile.existsSync()) {
            _availableKeys = [];
          } else {
            final data = keysFile.readAsStringSync();
            if (data.isEmpty) _availableKeys = [];
            _availableKeys = (jsonDecode(data) as List<dynamic>).cast();
          }
        } catch (e) {
          log('Failed to read keys file', name: 'flutter_ditto');
          exit(1);
        } finally {
          log(
            'Available keys found: $_availableKeys',
            name: 'flutter_ditto',
          );
          _initializationCompleter.complete();
          _mutex.release();
        }
      } else {
        log(
          'Linter was already initialized when semaphore was released',
          name: 'flutter_ditto_init',
        );
      }
    } else {
      log('Linter was already initialized', name: 'flutter_ditto_init');
    }

    log('File at path ${unit.path}', name: 'ditto');

    final elements = <MethodDeclaration>[];

    unit.unit.visitChildren(
      RecursiveVariableDeclarationVisitor(
        onBuildMethodVisit: (e) => elements.add(e),
      ),
    );

    final hardcoded = <Expression>[];

    elements
        .map((e) => e.childEntities)
        .expand((element) => [...element])
        .whereType<BlockFunctionBody>()
        .forEach(
          (e) => e.visitChildren(
            HardcodedStringsVisitor(onHardcodedStringFound: hardcoded.add),
          ),
        );

    log('Found ${hardcoded.length} hardcoded strings', name: 'flutter_ditto');
    log(
      'Strings: ${jsonEncode(hardcoded.map((t) => t.toString()).toList())}',
      name: 'flutter_ditto',
    );

    for (var element in hardcoded) {
      if (element is SimpleStringLiteral) {
        if (!_availableKeys.contains(element.stringValue)) {
          yield Lint(
            code: 'invalid_ditto_keyword',
            message: 'Keyword ${element.stringValue} is not contained in Ditto',
            location: unit.lintLocationFromOffset(
              element.offset,
              length: element.length,
            ),
	    severity: LintSeverity.error,
          );
        }
      }

      yield Lint(
        code: 'hardcoded_string',
        message: 'Do not use hardcoded Strings in your widgets',
        location: unit.lintLocationFromOffset(
          element.offset,
          length: element.length,
        ),
        severity: LintSeverity.warning,
      );
    }
  }
}
