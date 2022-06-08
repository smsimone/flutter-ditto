import 'package:ditto_sdk/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'block.freezed.dart';
part 'block.g.dart';

///
@freezed
class Block with _$Block {
  ///
  const factory Block({
    required String blockName,
    required List<Text> texts,
  }) = _Block;
  factory Block.fromJson(Map<String, dynamic> json) => _Block.fromJson(json);
}
