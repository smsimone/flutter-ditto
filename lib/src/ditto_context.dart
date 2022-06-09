import 'dart:async';

import 'package:ditto_sdk/api/api_exports.dart';
import 'package:ditto_sdk/ditto_sdk.dart';
import 'package:flutter/material.dart';

class DittoMaterialApp extends StatefulWidget {
  const DittoMaterialApp({
    required this.title,
    required this.home,
    required this.configData,
    this.loadingPlaceholder,
    this.customDefaultLocale,
    this.fallbackLocale,
    super.key,
  });

  final String title;
  final Widget home;
  final Widget? loadingPlaceholder;
  final DittoConfigData configData;
  final Locale? customDefaultLocale;
  final Locale? fallbackLocale;

  @override
  State<DittoMaterialApp> createState() => _DittoMaterialAppState();
}

class _DittoMaterialAppState extends State<DittoMaterialApp> {
  final _languageCompleter = Completer<List<Locale>>();

  @override
  void initState() {
    super.initState();
    DittoStore().initialize(configs: widget.configData).then((supported) {
      if (!_languageCompleter.isCompleted) {
        _languageCompleter.complete(supported);
      }
    }).onError((error, stackTrace) {
      debugPrint('Got error while initializing Ditto SDK: $error');
      throw error as Error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Locale>>(
        future: _languageCompleter.future,
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return widget.loadingPlaceholder ??
                const Center(child: CircularProgressIndicator());
          }

          return MaterialApp(
            localizationsDelegates: [
              DittoLocalizationsDelegate(),
              ...defaultDelegates,
            ],
            title: widget.title,
            locale: widget.customDefaultLocale,
            supportedLocales: DittoStore().supportedLocales,
            localeResolutionCallback: (locale, supported) {
              DittoStore().lastLocale = locale;
              if (locale == null) return null;
              if (supported.any((l) => l.languageCode == locale.languageCode)) {
                return supported.firstWhere(
                  (l) => l.languageCode == locale.languageCode,
                );
              }
              return widget.fallbackLocale;
            },
            home: widget.home,
          );
        });
  }
}
