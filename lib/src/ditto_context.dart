import 'package:ditto_sdk/api/configs/ditto_configs.dart';
import 'package:ditto_sdk/api/connection/api_connection.dart';
import 'package:flutter/material.dart';

class DittoApp extends InheritedWidget {
  DittoApp({
    required DittoConfigData configs,
    required super.child,
    super.key,
  }) {
    DittoConfigs(configs);
  }

  static DittoApp of(BuildContext context) {
    final ditto = context.dependOnInheritedWidgetOfExactType<DittoApp>();
    assert(ditto != null, 'Have you wrapped your app with DittoApp?');
    return ditto!.._ensureConfigs(context);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  /// Verifies that the supported [Locale] are
  Future<void> _ensureConfigs(BuildContext context) async {
    final variants = await ApiConnection().getVariants();
    //TODO should find a way to get the supported locales for the app
  }
}
