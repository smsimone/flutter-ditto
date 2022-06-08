import 'package:flutter/material.dart';

class DittoApp extends InheritedWidget {
  const DittoApp({super.key, required super.child});

  static DittoApp of(BuildContext context) {
    final ditto = context.dependOnInheritedWidgetOfExactType<DittoApp>();
    assert(ditto != null, 'Have you wrapped your app with DittoApp?');
    return ditto!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
