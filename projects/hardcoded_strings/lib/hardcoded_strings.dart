library hardcoded_strings;

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:hardcoded_strings/main.dart';
import 'package:hardcoded_strings/utils/custom_plugin_base.dart';
import 'package:hardcoded_strings/visitors/block_visitor.dart';
import 'package:hardcoded_strings/visitors/element_visitor.dart';

PluginBase createPlugin() => _HardcodedStringsLinter();

class _HardcodedStringsLinter extends CustomPluginBase {
  late final List<String> _availableKeys;
  var _initialized = false;

  @override
  Stream<Lint> getLints(ResolvedUnitResult unit) async* {
    if (!_initialized) {
      print('Calling super getLints');
      getProjectDir(unit);

      print('Called super getLints, waiting for dir');
      final dir = await projectDir;
      print('Got directory $dir');

      final keysFile = File('${dir.path}/$keysFilename');
      if (!keysFile.existsSync()) {
        _availableKeys = [];
      } else {
        final data = keysFile.readAsStringSync();
        if (data.isEmpty) _availableKeys = [];
        _availableKeys = (jsonDecode(data) as List<dynamic>).cast();
      }
      _initialized = true;
    }

    if (unit.path.contains('test')) return;

    log('File at path ${unit.path}', name: 'ditto');

    final elements = <MethodDeclaration>[];

    unit.unit.visitChildren(
      RecursiveVariableDeclarationVisitor(
        onBuildMethodVisit: (e) => elements.add(e),
      ),
    );

    final hardcoded = <Expression>[];
    final translations = <Expression>[];

    elements
        .map((e) => e.childEntities)
        .expand((element) => [...element])
        .whereType<BlockFunctionBody>()
        .forEach(
          (e) => e.visitChildren(
            HardcodedStringsVisitor(
              onHardcodedStringFound: hardcoded.add,
              onDittoTranslationFound: translations.add,
            ),
          ),
        );

    final config = await configs;

    final lints = hardcoded
        .whereType<SimpleStringLiteral>()
        .where((t) => t.value.length >= config.minLength)
        .map((element) => Lint(
              code: 'hardcoded_string',
              message: 'Do not use hardcoded Strings in your widgets',
              location: unit.lintLocationFromOffset(
                element.offset,
                length: element.length,
              ),
              severity: config.lintLevels.hardcodedString.getLevel(),
            ))
        .toList();

    lints.addAll(
      translations
          .whereType<SimpleStringLiteral>()
          .where((t) => !_availableKeys.contains(t.value))
          .map((element) => Lint(
                code: 'invalid_ditto_keyword',
                message:
                    'Keyword "${element.stringValue}" is not contained in Ditto',
                location: unit.lintLocationFromOffset(
                  element.offset,
                  length: element.length,
                ),
                severity: config.lintLevels.invalidDittoKeyword.getLevel(),
              ))
          .toList(),
    );

    for (var element in lints) {
      yield element;
    }
  }
}
