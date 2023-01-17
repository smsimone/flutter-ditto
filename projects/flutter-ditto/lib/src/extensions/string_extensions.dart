import 'package:flutter/material.dart';
import 'package:flutter_ditto/flutter_ditto.dart';

extension StringExtensions on String {
  String translate(
    BuildContext context, {
    Map<String, String?>? variables,
    int? count,
  }) {
    final ditto = InheritedDitto.of(context);
    return ditto.translate(this, variables: variables, count: count);
  }
}
