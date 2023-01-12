import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

const _textKey = 'ditto_text_key_cache';

class DittoCacheManager {
  static final DittoCacheManager _instance = DittoCacheManager._();
  DittoCacheManager._();
  factory DittoCacheManager.instance() => _instance;

  /// The manager that holds the cache for Ditto
  final _manager = CacheManager(Config(_textKey));

  /// Stores the data contained in [json] under the [key] specified
  ///
  /// [maxAge] specifies for how long the data should be saved in cache
  Future<void> store(
    String key,
    Map<String, dynamic> json, {
    Duration maxAge = const Duration(hours: 10),
  }) async =>
      _manager.putFile(
        key,
        Uint8List.fromList(utf8.encode(jsonEncode(json))),
        maxAge: maxAge,
      );

  /// Returns a previously saved file under [name] with the function
  /// [DittoCacheManager.store]
  Future<Map<String, dynamic>?> getFile(String name) async {
    /// Tries to fetch the file from memory
    final memoryFile = await _manager.getFileFromMemory(name);
    if (memoryFile != null) {
      return jsonDecode(memoryFile.file.readAsStringSync());
    }

    /// Fallbacks on the cache
    final cachedFile = await _manager.getFileFromCache(name);
    if (cachedFile != null) {
      return jsonDecode(cachedFile.file.readAsStringSync());
    }

    /// There is no file named [name]
    return null;
  }

  Future<void> deleteCache() => _manager.emptyCache();
}
