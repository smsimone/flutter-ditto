import 'package:freezed_annotation/freezed_annotation.dart';

part 'plurals.freezed.dart';
part 'plurals.g.dart';

@freezed
class Plurals with _$Plurals {
  const factory Plurals({
    String? zero,
    String? one,
    String? two,
    String? few,
    String? many,
    String? other,
  }) = _Plurals;

  factory Plurals.fromJson(Map<String, dynamic> json) =>
      _Plurals.fromJson(json);

  const Plurals._();

  bool get someValorized =>
      [zero, one, two, few, many, other].any((v) => v != null);
}
