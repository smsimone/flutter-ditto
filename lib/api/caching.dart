import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_cache/flutter_cache.dart';
import 'package:flutter_ditto/api/models/models.dart';

const _textKey = 'ditto_text_key_cache';

/// Saves the [data] in cache
Future<void> saveTextData(List<Text> data) async {
  try {
    final jsonData = data.map((e) => e.toJson()).toList();

    await remember(
      _textKey,
      jsonEncode(
        {'data': jsonData, 'savedAt': DateTime.now().millisecondsSinceEpoch},
      ),
      const Duration(minutes: 5).inSeconds,
    ).onError((error, stackTrace) {
      debugPrint('Failed to store data: ${error.toString()}');
      debugPrint(stackTrace.toString());
    });

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
    final data = await load(_textKey);
    if (data is! String) {
      return null;
    }

    return (jsonDecode(data)['data'] as List<dynamic>)
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
