import 'package:ditto_sdk/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MapToBlockConverter
    extends JsonConverter<List<Block>, Map<String, dynamic>> {
  const MapToBlockConverter();

  @override
  List<Block> fromJson(Map<String, dynamic> json) {
    return json.entries
        .map((e) => Block.fromJson(e.value as Map<String, dynamic>))
        .toList();
  }

  @override
  Map<String, dynamic> toJson(List<Block> object) =>
      {'blocks': object.map((b) => b.toJson())};
}

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

class MapToFrameConverter
    extends JsonConverter<List<Frame>, Map<String, dynamic>> {
  const MapToFrameConverter();

  @override
  List<Frame> fromJson(Map<String, dynamic> json) {
    return json.entries.map((e) {
      final data = (e.value as Map<String, dynamic>)
        ..putIfAbsent('frame_id', () => e.key);
      return Frame.fromJson(data);
    }).toList();
  }

  @override
  Map<String, dynamic> toJson(List<Frame> object) =>
      {'frames': object.map((f) => f.toJson()).toList()};
}
