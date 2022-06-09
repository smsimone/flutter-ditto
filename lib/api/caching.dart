import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_ditto/api/models/models.dart';
import 'package:path_provider/path_provider.dart';

const _textKey = 'ditto_text_key_cache';

/// Saves the [data] in cache
Future<void> saveTextData(List<Text> data) async {
  try {
    final manager = DefaultCacheManager();

    final jsonData = data.map((e) => e.toJson()).toList();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/ditto_text_key_cache.json');

    await manager.putFile(
      file.path,
      Uint8List.fromList(utf8.encode(jsonEncode({
        'data': jsonData,
        'savedAt': DateTime.now().millisecondsSinceEpoch,
      }))),
      fileExtension: 'json',
      key: _textKey,
    );

    debugPrint('Saved updated translations to cache');
  } catch (e, s) {
    debugPrint('Failed to store text data: $e');
    debugPrintStack(stackTrace: s);
    rethrow;
  }
}

/// Recovers the [Text] objects from cache
Future<List<Text>?> reloadTextData() async {
  final start = DateTime.now();
  try {
    final manager = DefaultCacheManager();
    final fileInfo = await manager.getFileFromCache(_textKey);

    if (fileInfo == null) {
      return null;
    }

    final file = fileInfo.file;
    final data = jsonDecode(utf8.decode(await file.readAsBytes()));

    return (data['data'] as List<dynamic>)
        .map((t) => Text.fromJson(t))
        .toList();
  } catch (e, s) {
    debugPrint('Failed to reload text data: $e');
    debugPrintStack(stackTrace: s);
    rethrow;
  } finally {
    debugPrint(
      'Reload from cache took: ${DateTime.now().millisecondsSinceEpoch - start.millisecondsSinceEpoch}ms',
    );
  }
}
