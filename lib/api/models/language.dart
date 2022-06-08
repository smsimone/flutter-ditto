import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class Language with _$Language {
  const factory Language({
    required String name,
    @JsonKey(name: 'apiID') required String apiId,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _Language.fromJson(json);
}
