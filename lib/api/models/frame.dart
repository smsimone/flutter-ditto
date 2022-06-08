import 'package:ditto_sdk/api/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'frame.freezed.dart';
part 'frame.g.dart';

///
@freezed
class Frame with _$Frame {
  ///
  const factory Frame({
    @JsonKey(name: 'frame_id') required String frameId,
    required String frameName,
    @MapToBlockConverter() @Default([]) List<Block> blocks,
    @MapToTextConverter() @Default([]) List<Text> otherText,
  }) = _Frame;

  factory Frame.fromJson(Map<String, dynamic> json) => _Frame.fromJson(json);
}
