// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lint_levels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LintLevels _$$_LintLevelsFromJson(Map<String, dynamic> json) =>
    _$_LintLevels(
      hardcodedString:
          $enumDecodeNullable(_$LintLevelEnumMap, json['hardcoded_string']) ??
              LintLevel.warning,
      invalidDittoKeyword: $enumDecodeNullable(
              _$LintLevelEnumMap, json['invalid_ditto_keyword']) ??
          LintLevel.error,
    );

Map<String, dynamic> _$$_LintLevelsToJson(_$_LintLevels instance) =>
    <String, dynamic>{
      'hardcoded_string': _$LintLevelEnumMap[instance.hardcodedString]!,
      'invalid_ditto_keyword':
          _$LintLevelEnumMap[instance.invalidDittoKeyword]!,
    };

const _$LintLevelEnumMap = {
  LintLevel.info: 'info',
  LintLevel.warning: 'warning',
  LintLevel.error: 'error',
};
