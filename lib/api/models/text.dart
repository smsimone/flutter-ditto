import 'package:ditto_sdk/api/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text.freezed.dart';
part 'text.g.dart';

@freezed
class Text with _$Text {
  const factory Text({
    /// Viene valorizzato solo se è una chiave di primo livello
    ///
    /// Per le varianti è nullo
    @JsonKey(name: 'key', includeIfNull: false) String? key,
    required String text,
    @JsonKey(includeIfNull: false) String? status,
    @JsonKey(includeIfNull: false) String? notes,
    @JsonKey(includeIfNull: false) Map<String, dynamic>? variables,
    @JsonKey(includeIfNull: false) Plurals? plurals,
    @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
        Map<String, Text>? variants,
    @JsonKey(includeIfNull: false) List<String>? tags,
    @JsonKey(includeIfNull: false) @JsonKey(name: 'is_comp') bool? isComp,
  }) = _Text;

  factory Text.fromJson(Map<String, dynamic> json) => _Text.fromJson(json);

  const Text._();

  String applyVariables(Map<String, String>? toApply) {
    assert(
      variables == null || toApply != null,
      'Variables are required for key $key',
    );
    assert(() {
      if (variables == null) return true;

      final keysNeeded = variables!.entries.map((e) => e.key).toSet();
      final keysProvided = toApply!.entries.map((e) => e.key).toSet();

      if (keysNeeded.difference(keysProvided).isNotEmpty) {
        throw ArgumentError(
          'Variables are missing for key $key: ${keysNeeded.difference(keysProvided)}',
        );
      }

      return true;
    }());

    var currentText = text;
    if (toApply != null) {
      toApply.forEach((key, value) {
        currentText = currentText.replaceAll('{{$key}}', value);
      });
    }
    return currentText;
  }
}

Map<String, Text>? variantsFromJson(Map<String, dynamic>? json) {
  if (json == null) return null;

  final data = json.entries.map(
    (e) => MapEntry(e.key, Text.fromJson(e.value as Map<String, dynamic>)),
  );

  return Map.fromEntries(data);
}
