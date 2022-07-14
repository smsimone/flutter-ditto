import 'dart:developer';

import 'package:flutter_ditto/flutter_ditto.dart';

extension DittoTranslationExtension on String {
  String translate({Map<String, String?>? variables, int? count}) {
    try {
      return DittoStore()
          .getLocalizationProvider()
          .translate(this, variables: variables, count: count);
    } catch (e, s) {
      log(
        'Failed to translate "$this"',
        name: 'flutter_ditto',
        error: e,
        stackTrace: s,
        level: 1000,
      );
      rethrow;
    }
  }
}
