import 'package:flutter_ditto/api/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MapToTextConverter
    extends JsonConverter<List<Text>, Map<String, dynamic>> {
  const MapToTextConverter();

  @override
  List<Text> fromJson(Map<String, dynamic> json) {
    return json.entries.map((e) {
      final data = (e.value as Map<String, dynamic>)
        ..putIfAbsent('key', () => e.key);
      return Text.fromJson(data);
    }).toList();
  }

  @override
  Map<String, dynamic> toJson(List<Text> object) =>
      {'otherText': object.map((b) => b.toJson())};
}
