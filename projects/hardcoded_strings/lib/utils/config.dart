import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardcoded_strings/utils/lint_levels.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class Config with _$Config {
  const factory Config({
    @JsonKey(name: 'min_lint_length') @Default(0) int minLength,
    @JsonKey(name: 'lint_levels') @Default(LintLevels()) LintLevels lintLevels,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _Config.fromJson(json);
}
