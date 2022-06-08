import 'package:ditto_sdk/models/text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'frame.freezed.dart';
part 'frame.g.dart';

///
@freezed
class Frame with _$Frame {
  ///
  const factory Frame({
    required String frameName,
    @Default([]) required List<dynamic> blocks,
    @Default([]) required List<Text> otherText,
  }) = _Frame;

  factory Frame.fromJson(Map<String, dynamic> json) => _Frame.fromJson(json);
}
