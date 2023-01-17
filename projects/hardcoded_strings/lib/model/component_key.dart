import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_key.freezed.dart';
part 'component_key.g.dart';

@freezed
class ComponentKey with _$ComponentKey {
  const factory ComponentKey({
    String? defaultKey,
    String? componentKey,
  }) = _ComponentKey;
  factory ComponentKey.fromJson(Map<String, dynamic> json) =>
      _ComponentKey.fromJson(json);
}
