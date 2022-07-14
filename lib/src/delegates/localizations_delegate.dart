import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ditto/flutter_ditto.dart';
import 'package:flutter_ditto/src/delegates/localization_provider.dart';

class DittoLocalizationsDelegate
    extends LocalizationsDelegate<LocalizationProvider> {
  Locale? _loadedLocale;

  @override
  bool isSupported(Locale locale) {
    final locales = DittoStore().supportedLocales.map((l) => l.languageCode);
    final supported = locales.contains(locale.languageCode);
    return supported;
  }

  @override
  Future<LocalizationProvider> load(Locale locale) {
    _loadedLocale = locale;
    return SynchronousFuture<LocalizationProvider>(
      DittoStore().set(LocalizationProvider(locale)),
    );
  }

  @override
  bool shouldReload(DittoLocalizationsDelegate old) =>
      old._loadedLocale != _loadedLocale;
}
