import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_ditto/api/models/models.dart';
import 'package:path_provider/path_provider.dart';

const _textKey = 'ditto_text_key_cache';
const _componentsKey = 'ditto_components_key_cache';

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

    log('Saved updated translations to cache', name: 'flutter_ditto');
  } catch (e, s) {
    log(
      'Failed to store text data',
      error: e,
      stackTrace: s,
      level: 1000,
      name: 'flutter_ditto',
    );
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
    log(
      'Failed to reload text data',
      error: e,
      stackTrace: s,
      level: 1000,
      name: 'flutter_ditto',
    );
    rethrow;
  } finally {
    log(
      'Reload texts from cache took: ${DateTime.now().millisecondsSinceEpoch - start.millisecondsSinceEpoch}ms',
      name: 'flutter_ditto',
      level: 700,
    );
  }
}

Future<void> saveComponentData(List<Text> data) async {
  try {
    final manager = DefaultCacheManager();

    final jsonData = data.map((e) => e.toJson()).toList();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/ditto_components_key_cache.json');

    await manager.putFile(
      file.path,
      Uint8List.fromList(utf8.encode(jsonEncode({
        'data': jsonData,
        'savedAt': DateTime.now().millisecondsSinceEpoch,
      }))),
      fileExtension: 'json',
      key: _componentsKey,
    );

    log('Saved updated components to cache', name: 'flutter_ditto');
  } catch (e, s) {
    log(
      'Failed to store components data',
      error: e,
      stackTrace: s,
      level: 1000,
      name: 'flutter_ditto',
    );
    rethrow;
  }
}

/// Recovers the [Component] objects from cache
Future<List<Text>?> reloadComponentData() async {
  final start = DateTime.now();
  try {
    final manager = DefaultCacheManager();
    final fileInfo = await manager.getFileFromCache(_componentsKey);

    if (fileInfo == null) {
      return null;
    }

    final file = fileInfo.file;
    final data = jsonDecode(utf8.decode(await file.readAsBytes()));

    return (data['data'] as List<dynamic>)
        .map((t) => Text.fromJson(t))
        .toList();
  } catch (e, s) {
    log(
      'Failed to reload component data',
      error: e,
      stackTrace: s,
      level: 1000,
      name: 'flutter_ditto',
    );
    rethrow;
  } finally {
    log(
      'Reload components from cache took: ${DateTime.now().millisecondsSinceEpoch - start.millisecondsSinceEpoch}ms',
      name: 'flutter_ditto',
      level: 700,
    );
  }
}
