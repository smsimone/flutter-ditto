import 'dart:async';

import 'package:flutter/material.dart' hide Text;
import 'package:flutter_ditto/api/models/text.dart';
import 'package:flutter_ditto/src/delegates/localization_provider.dart';

class DittoLocalizationsDelegate
    extends LocalizationsDelegate<LocalizationProvider> {
  DittoLocalizationsDelegate(
    this._supportedLocales,
    this._texts, {
    this.defaultLocale,
  });

  final List<Locale> _supportedLocales;
  final List<Text> _texts;
  final Locale? defaultLocale;

  var _initialized = false;
  late final LocalizationProvider _provider;

  LocalizationProvider get provider {
    assert(
      _initialized,
      'Have you added this delegate to your MaterialApp/CupertinoApp?',
    );
    return _provider;
  }

  @override
  bool isSupported(Locale locale) => _supportedLocales
      .map((e) => e.languageCode)
      .contains(locale.languageCode);

  @override
  Future<LocalizationProvider> load(Locale locale) {
    _initialized = true;
    return Future.sync(
      () => _provider = LocalizationProvider(defaultLocale ?? locale, _texts),
    );
  }

  @override
  bool shouldReload(DittoLocalizationsDelegate old) => false;
}
