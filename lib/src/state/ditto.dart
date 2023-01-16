import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart' hide Text;
import 'package:flutter_ditto/api/configs/config_data.dart';
import 'package:flutter_ditto/api/connection/api_connection.dart';
import 'package:flutter_ditto/api/models/text.dart';
import 'package:flutter_ditto/src/cache/ditto_cache.dart';
import 'package:flutter_ditto/src/delegates/localization_delegate.dart';

@immutable
class Ditto {
  Ditto(this.configs);

  final _conn = ApiConnection();
  final _cache = DittoCache();
  final DittoConfigData configs;

  final _locales = <Locale>[];
  final _texts = <Text>[];

  final _initializationCompleter = Completer<void>();
  late final ValueNotifier<DittoLocalizationsDelegate> _delegate;

  DittoLocalizationsDelegate get localizationsDelegate {
    assert(_initializationCompleter.isCompleted);
    return _delegate.value;
  }

  /// Translates the label [label] in the current locale
  String translate(
    String label, {
    Map<String, String?>? variables,
    int? count,
  }) =>
      _delegate.value.provider.translate(
        label,
        variables: variables,
        count: count,
      );

  /// Returns a [Future] that completes when [Ditto] is successfully initialized
  Future<void> get isInitialized => _initializationCompleter.future;

  /// [defaultLocale] forces [Ditto] to set the current [Locale] to the given
  /// one. If there's no preferred [Locale], the device's one will be
  /// chosen
  Future<void> initialize({
    Locale? defaultLocale,
    bool onlyNetworkLabels = true,
  }) async {
    assert(
      !_initializationCompleter.isCompleted,
      "Ditto has already been initialized",
    );

    await _cache.initialize();

    final results = await Future.wait([
      _getVariants(),
      _getTexts(onlyNetworkLabels: onlyNetworkLabels).first,
    ]).onError((error, stackTrace) {
      _initializationCompleter.completeError(
        error ?? 'Failed initialization: $error',
      );
      log(
        'Failed Ditto initialization',
        error: error,
        stackTrace: stackTrace,
        name: 'flutter_ditto',
      );
      return [];
    });
    if (results.isEmpty) return;

    Locale? forcedLocale;

    if (!_locales.contains(defaultLocale)) {
      log(
        'Requested default locale $defaultLocale, is not present in Ditto variants. Available locales are: $_locales',
        name: 'flutter_ditto',
        level: 1000,
      );
    } else {
      forcedLocale = defaultLocale;
    }

    _delegate = ValueNotifier(
      DittoLocalizationsDelegate(
        _locales,
        _texts,
        defaultLocale: forcedLocale,
      ),
    );
    _initializationCompleter.complete();
    log('Initialized Ditto instance', name: 'flutter_ditto');
  }

  Stream<void> _getTexts({bool onlyNetworkLabels = false}) async* {
    final cached = _cache.retrieveCachedTexts();
    if (cached != null) {
      yield cached;
    }

    final data = await _conn.getStructuredTexts(
      configs.projectId,
      apiKey: configs.apiKey,
      baseUrl: configs.baseUrl,
      acceptCache: !onlyNetworkLabels,
    );

    if (data == null) {
      throw Exception('Missing localizations for project ${configs.projectId}');
    }

    _cache.saveTexts(data);

    _texts.addAll(data);
  }

  /// Get the available variants inside the Ditto project
  Future<void> _getVariants() async {
    final variants = await _conn.getVariants(
      baseUrl: configs.baseUrl,
      apiKey: configs.apiKey,
    );

    if (variants.isEmpty) {
      throw Exception('No variants found');
    }

    _locales.addAll(variants.map((v) => Locale(v.apiId)));
  }
}
