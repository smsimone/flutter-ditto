import 'package:ditto_sdk/ditto_sdk.dart';

extension DittoTranslationExtension on String {
  String translate([Map<String, String>? variables]) {
    return DittoStore()
        .getLocalizationProvider()
        .translate(this, variables: variables);
  }
}
