import 'package:flutter/material.dart';
import 'package:flutter_ditto/api/configs/config_data.dart';
import 'package:flutter_ditto/src/state/ditto.dart';

class InheritedDitto extends InheritedWidget {
  const InheritedDitto._({
    required super.child,
    required Ditto ditto,
    this.defaultLocale,
  }) : _ditto = ditto;

  factory InheritedDitto({
    required Widget child,
    required DittoConfigData config,
    Locale? defaultLocale,
    Widget? loadingWidget,
    bool onlyNetworkLabels = true,
    Widget Function(Object? error)? errorBuilder,
  }) {
    final ditto = Ditto(config)
      ..initialize(
        defaultLocale: defaultLocale,
        onlyNetworkLabels: onlyNetworkLabels,
      );
    return InheritedDitto._(
      defaultLocale: defaultLocale,
      ditto: ditto,
      child: FutureBuilder<void>(
        future: ditto.isInitialized,
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done &&
              loadingWidget != null) {
            return loadingWidget;
          }
          if (snap.hasError) {
            return errorBuilder?.call(snap.error) ?? Container();
          }
          return child;
        },
      ),
    );
  }

  /// Returns the [Ditto] instance registered inside the current
  /// [context]
  static Ditto of(BuildContext context) {
    final temp = context.findAncestorWidgetOfExactType<InheritedDitto>();
    assert(
      temp != null,
      'Have you added InheritedDitto at the root of your tree?',
    );
    return temp!._ditto;
  }

  final Locale? defaultLocale;
  final Ditto _ditto;

  @override
  bool updateShouldNotify(covariant InheritedDitto oldWidget) =>
      defaultLocale != oldWidget.defaultLocale;
}
