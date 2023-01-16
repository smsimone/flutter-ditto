import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_ditto/api/models/text.dart';
import 'package:path_provider/path_provider.dart';

const _cacheFileName = 'ditto_cache_file';

class DittoCache {
  final _initializationCompleter = Completer<void>();

  late final File _cacheFile;

  Future<void> initialize() async {
    assert(!_initializationCompleter.isCompleted);
    final dir = await getApplicationDocumentsDirectory();

    log('Setting up cache in ${dir.path}', name: 'flutter_ditto');

    _cacheFile = File('${dir.path}/$_cacheFileName');
    if (!_cacheFile.existsSync()) {
      log('Created cache file', name: 'flutter_ditto');
      _cacheFile.createSync();
    }
    _initializationCompleter.complete();
  }

  /// Saves all the [texts] given in the cache file
  Future<void> saveTexts(List<Text> texts) async {
    assert(_initializationCompleter.isCompleted);

    final data = texts.map((t) => t.toJson()).toList();
    log('Saved new data in cache file', name: 'flutter_ditto');
    return _cacheFile.writeAsStringSync(jsonEncode(data));
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
