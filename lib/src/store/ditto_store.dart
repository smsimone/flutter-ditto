import 'dart:async';

import 'package:flutter/material.dart' hide Text;
import 'package:flutter_ditto/api/api_exports.dart';
import 'package:flutter_ditto/api/connection/api_connection.dart';
import 'package:flutter_ditto/api/models/text.dart';
import 'package:flutter_ditto/src/delegates/localization_provider.dart';
import 'package:flutter_ditto/src/exceptions/missing_locale_exception.dart';

class DittoStore {
  factory DittoStore() => _instance;
  DittoStore._();
  static final _instance = DittoStore._();

  final _initializeCompleter = Completer<void>();

  late List<Locale> _downloadedLocales;

  late LocalizationProvider _localizationProvider;

  late List<Text> _texts;

  Locale? lastLocale;

  LocalizationProvider set(LocalizationProvider localizationProvider) =>
      _localizationProvider = localizationProvider;

  LocalizationProvider getLocalizationProvider() {
    assert(isInitialized);
    return _localizationProvider;
  }

  /// Returns the locales that are supported
  Future<List<Locale>> initialize({
    required DittoConfigData configs,
  }) async {
    DittoConfigs(configs);
    await _getSupportedLocales();
    final texts = await ApiConnection().getStructuredTexts(null);

    if (texts == null) {
      throw MissingLocalizationException(DittoConfigs().projectId);
    }

    _texts = texts;
    _initializeCompleter.complete();
    return _downloadedLocales;
  }

  /// Verifies that the supported [Locale] are
  Future<void> _getSupportedLocales() async {
    final variants = await ApiConnection().getVariants();
    if (variants.isEmpty) {
      throw Exception('No variants from ditto found');
    }

    _downloadedLocales = variants.map((v) => Locale(v.apiId)).toList();
  }

  bool get isInitialized => _initializeCompleter.isCompleted;

  List<Locale> get supportedLocales {
    assert(isInitialized);
    return _downloadedLocales;
  }

  List<Text> get texts {
    assert(isInitialized);
    return _texts;
  }
}
