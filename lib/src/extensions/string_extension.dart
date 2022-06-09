import 'package:flutter_ditto/flutter_ditto.dart';

extension DittoTranslationExtension on String {
  String translate([Map<String, String>? variables]) {
    return DittoStore()
        .getLocalizationProvider()
        .translate(this, variables: variables);
  }
}
