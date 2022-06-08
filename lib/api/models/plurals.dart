import 'package:freezed_annotation/freezed_annotation.dart';

part 'plurals.freezed.dart';
part 'plurals.g.dart';

@freezed
class Plurals with _$Plurals {
  const factory Plurals({
    String? zero,
    String? few,
    String? many,
    String? other,
  }) = _Plurals;
  factory Plurals.fromJson(Map<String, dynamic> json) =>
      _Plurals.fromJson(json);
}
