// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Config _$$_ConfigFromJson(Map<String, dynamic> json) => _$_Config(
      minLength: json['min_lint_length'] as int? ?? 0,
      lintLevels: json['lint_levels'] == null
          ? const LintLevels()
          : LintLevels.fromJson(json['lint_levels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConfigToJson(_$_Config instance) => <String, dynamic>{
      'min_lint_length': instance.minLength,
      'lint_levels': instance.lintLevels,
    };
