import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_ditto/api/models/text.dart';
import 'package:hardcoded_strings/hardcoded_strings.dart';
import 'package:path_provider/path_provider.dart';

const _cacheFileName = 'ditto_cache_file';

class DittoCache {
  final _initializationCompleter = Completer<void>();

  late final File _cacheFile;
  late final File _keysCacheFile;

  Future<void> initialize() async {
    assert(!_initializationCompleter.isCompleted);
    final dir = await getApplicationDocumentsDirectory();

    log('Setting up cache in ${dir.path}', name: 'flutter_ditto');

    _cacheFile = File('${dir.path}/$_cacheFileName');
    if (!_cacheFile.existsSync()) {
      log('Created cache file', name: 'flutter_ditto');
      _cacheFile.createSync();
    }

    _keysCacheFile = File('${dir.path}/$cacheKeysFilename');
    if (!_keysCacheFile.existsSync()) {
      log('Created keys cache file', name: 'flutter_ditto');
      _keysCacheFile.createSync();
    }

    _initializationCompleter.complete();
  }

  /// Saves all the [texts] given in the cache file
  Future<void> saveTexts(List<Text> texts) async {
    assert(_initializationCompleter.isCompleted);
    final data = <Map<String, dynamic>>[];
    final keys = <Map<String, dynamic>>[];

    for (var element in texts) {
      data.add(element.toJson());
      keys.add(ComponentKey(
        componentKey: element.componentId,
        defaultKey: element.key,
      ).toJson());
    }

    await Future.wait([
      _cacheFile.writeAsString(jsonEncode(data)),
      _keysCacheFile.writeAsString(jsonEncode(keys)),
    ]);
    log('Saved new data in cache file', name: 'flutter_ditto');
  }

  /// Retrieved all the cached texts from the file
  List<Text>? retrieveCachedTexts() {
    assert(_initializationCompleter.isCompleted);

    final data = _cacheFile.readAsStringSync();
    log(
      'Retrieved ${data.length} bytes from cache file',
      name: 'flutter_ditto',
    );
    if (data.isEmpty) return null;
    return (jsonDecode(data) as List).map((t) => Text.fromJson(t)).toList();
  }
}
