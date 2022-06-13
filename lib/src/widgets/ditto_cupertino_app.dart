import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ditto/api/api_exports.dart';
import 'package:flutter_ditto/flutter_ditto.dart';

class DittoCupertinoApp extends StatefulWidget {
  DittoCupertinoApp({
    required this.title,
    required this.home,
    this.configData,
    this.loadingPlaceholder,
    this.customDefaultLocale,
    this.fallbackLocale,
    this.debugShowCheckedModeBanner = false,
    this.initialRoute,
    this.builder,
    this.navigatorObservers = const [],
    this.theme,
    this.localeResolutionCallback,
    this.routes = const {},
    super.key,
  }) : assert(configData != null || DittoStore().isInitialized);

  final String title;
  final Widget home;
  final Widget? loadingPlaceholder;
  final DittoConfigData? configData;
  final bool debugShowCheckedModeBanner;
  final Locale? customDefaultLocale;
  final Locale? fallbackLocale;
  final Widget Function(BuildContext, Widget?)? builder;
  final List<NavigatorObserver> navigatorObservers;
  final String? initialRoute;
  final Map<String, Widget Function(BuildContext context)> routes;
  final CupertinoThemeData? theme;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;

  @override
  State<DittoCupertinoApp> createState() => _DittoCupertinoAppState();
}

class _DittoCupertinoAppState extends State<DittoCupertinoApp> {
  final _languageCompleter = Completer<List<Locale>>();

  @override
  void initState() {
    super.initState();
    if (widget.configData != null) {
      DittoStore().initialize(widget.configData!).then((supported) {
        if (!_languageCompleter.isCompleted) {
          _languageCompleter.complete(supported);
        }
      }).onError((error, stackTrace) {
        debugPrint('Got error while initializing Ditto SDK: $error');
        throw Exception(error);
      });
    } else {
      _languageCompleter.complete(DittoStore().supportedLocales);
    }
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

        return CupertinoApp(
          localizationsDelegates: [
            DittoLocalizationsDelegate(),
            ...defaultDelegates,
          ],
          builder: widget.builder,
          title: widget.title,
          locale: widget.customDefaultLocale,
          supportedLocales: DittoStore().supportedLocales,
          navigatorObservers: widget.navigatorObservers,
          theme: widget.theme,
          initialRoute: widget.initialRoute,
          routes: widget.routes,
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
          localeResolutionCallback: (locale, supported) {
            if (widget.localeResolutionCallback != null) {
              return widget.localeResolutionCallback?.call(locale, supported);
            }

            DittoStore().lastLocale = locale;
            if (locale == null) return null;
            if (supported.any((l) => l.languageCode == locale.languageCode)) {
              return supported
                  .firstWhere((l) => l.languageCode == locale.languageCode);
            }
            return widget.fallbackLocale;
          },
          home: widget.home,
        );
      },
    );
  }
}
