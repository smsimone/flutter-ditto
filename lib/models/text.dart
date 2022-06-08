import 'package:freezed_annotation/freezed_annotation.dart';

part 'text.freezed.dart';
part 'text.g.dart';

///
@freezed
class Text with _$Text {
  ///
  const factory Text({
    required String text,
    String? status,
    List<String>? tags,
    String? notes,
    @JsonKey(name: 'is_comp') bool? isComp,
  }) = _Text;
  factory Text.fromJson(Map<String, dynamic> json) => _Text.fromJson(json);
}
