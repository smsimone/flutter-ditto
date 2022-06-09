import 'package:ditto_sdk/api/models/models.dart';
import 'package:ditto_sdk/ditto_sdk.dart';
import 'package:flutter/material.dart' hide Text;

class LocalizationProvider {
  LocalizationProvider(this._currentLocale);

  final Locale _currentLocale;

  Text _toText(String key) {
    final texts = DittoStore().texts;
    assert(
      texts.any((t) => t.key == key),
      'Text of key $key not available: ${texts.map((t) => t.key).toList()}',
    );
    final text = texts.firstWhere((t) => t.key == key);
    assert(
      text.variants != null,
      'Text $key has no variants: ${text.toJson()}',
    );
    return text;
  }

  String translate(String key, {Map<String, String>? variables}) {
    final text = _toText(key);
    assert(text.variants != null, 'Text of key $key has no variants');
    assert(
      text.variants![_currentLocale.languageCode] != null,
      'Missing variant for language ${_currentLocale.languageCode} for key $key',
    );
    return text.variants![_currentLocale.languageCode]!
        .applyVariables(variables);
  }

  bool hasVariables(String key) => _toText(key).variables != null;
}
