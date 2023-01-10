import 'package:flutter/foundation.dart';
import 'package:flutter_ditto/api/caching/cache_manager.dart';
import 'package:flutter_ditto/api/configs/ditto_configs.dart';
import 'package:flutter_ditto/api/models/models.dart';

const _textKey = 'ditto_text_key_cache';

/// Saves the [data] in cache
Future<void> saveTextData(List<Text> data) async {
  try {
    final jsonData = data.map((e) => e.toJson()).toList();

    DittoCacheManager.instance().store(
      '${_textKey}_${DittoConfigs().projectId}',
      {'data': jsonData, 'savedAt': DateTime.now().millisecondsSinceEpoch},
      maxAge: const Duration(minutes: 5),
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
    final data = await DittoCacheManager.instance()
        .getFile('${_textKey}_${DittoConfigs().projectId}');
    if (data == null) return null;

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

/// Deletes all the cache contained in [DittoCacheManager]
Future<void> deleteCache() => DittoCacheManager.instance().deleteCache();
