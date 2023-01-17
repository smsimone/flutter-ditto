import 'package:freezed_annotation/freezed_annotation.dart';

part 'variable.freezed.dart';
part 'variable.g.dart';

@freezed
class Variable with _$Variable {
  const factory Variable({
    @JsonKey(name: 'variable_name') required String variableName,

    /// The example value of the variable
    ///
    /// Can be:
    /// - a [String]
    /// - a [num]
    dynamic example,

    /// The fallback value of the variable
    ///
    /// Can be:
    /// - a [String]
    /// - a [num]
    dynamic fallback,
  }) = _Variable;

  factory Variable.fromJson(Map<String, dynamic> json) =>
      _Variable.fromJson(json);
}
