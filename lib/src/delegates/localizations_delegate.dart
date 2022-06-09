import 'package:ditto_sdk/ditto_sdk.dart';
import 'package:ditto_sdk/src/delegates/localization_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DittoLocalizationsDelegate
    extends LocalizationsDelegate<LocalizationProvider> {
  @override
  bool isSupported(Locale locale) {
    final locales = DittoStore().supportedLocales.map((l) => l.languageCode);
    final supported = locales.contains(locale.languageCode);
    return supported;
  }

  @override
  Future<LocalizationProvider> load(Locale locale) {
    return SynchronousFuture<LocalizationProvider>(
      DittoStore().set(
        LocalizationProvider(locale),
      ),
    );
  }

  @override
  bool shouldReload(DittoLocalizationsDelegate old) => true;
}
