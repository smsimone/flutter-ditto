import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardcoded_strings/utils/config.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

const _pubspecFile = 'pubspec.yaml';

class CustomPluginBase extends PluginBase {
  final _projectDirCompleter = Completer<Uri>();
  final _configsCompleter = Completer<Config>();

  late Uri _projectDir;
  late Config _configs;

  /// Returns a [Future] that completes when the project directory is found.
  ///
  /// This returns when the first [PluginBase.getLints()] callback is executed
  Future<Uri> get projectDir => _projectDirCompleter.future;

  /// Returns a [Future] that completes when the configs are loaded from
  /// the `analysis_options.yaml` file
  Future<Config> get configs => _configsCompleter.future;

  /// Returns the [Uri] which contains the file `pubspec.yaml`
  ///
  /// i.e. this method returns the path to the root of the directory
  Uri _containsPubspecFile(Uri uri) {
    print('Checking for folder $uri');
    try {
      if (uri.pathSegments.length == 1) {
        throw Exception('Failed to find keys file, have you generated it?');
      }

      final dirPath = p.dirname(uri.path);
      final dir = Directory.fromUri(Uri.parse(dirPath));
      if (dir.existsSync()) {
        final files = dir.listSync();
        final isContained = files.any((t) => t.path.contains(_pubspecFile));
        if (!isContained) return _containsPubspecFile(dir.uri);
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

  void _loadConfigs() {
    print('Loading config file');
    assert(_projectDirCompleter.isCompleted);
    final filePath = '${_projectDir.path}/analysis_options.yaml';

    final file = File(filePath);
    if (!file.existsSync()) {
      _configsCompleter.completeError('There is no analysis_options.yaml file');
      return;
    }

    final content = file.readAsStringSync();
    final yamlFile = loadYaml(content);
    print('Yaml content is: $yamlFile');
  }

  @override
  @mustCallSuper
  Stream<Lint> getLints(ResolvedUnitResult resolvedUnitResult) async* {
    print('Looking for project dir 1');
    if (!_projectDirCompleter.isCompleted) {
      print('Looking for project directory');
      final projectDir =
          _containsPubspecFile(Uri.parse(resolvedUnitResult.path));
      log(
        'Project directory is: $projectDir',
        name: 'flutter_ditto',
      );
      assert(!_projectDirCompleter.isCompleted);
      _projectDirCompleter.complete(_projectDir = projectDir);
      _loadConfigs();
    }
  }
}
