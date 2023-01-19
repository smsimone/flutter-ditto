import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardcoded_strings/utils/level.dart';

part 'lint_levels.freezed.dart';
part 'lint_levels.g.dart';

@freezed
class LintLevels with _$LintLevels {
  const factory LintLevels({
    @Default(LintLevel.warning)
    @JsonKey(name: 'hardcoded_string')
        LintLevel hardcodedString,
    @Default(LintLevel.error)
    @JsonKey(name: 'invalid_ditto_keyword')
        LintLevel invalidDittoKeyword,
  }) = _LintLevels;
  factory LintLevels.fromJson(Map<String, dynamic> json) =>
      _LintLevels.fromJson(json);
}
