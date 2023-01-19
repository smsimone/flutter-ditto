import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum LintLevel {
  @JsonValue('info')
  info,
  @JsonValue('warning')
  warning,
  @JsonValue('error')
  error;

  LintSeverity getLevel() {
    switch (this) {
      case LintLevel.info:
        return LintSeverity.info;
      case LintLevel.warning:
        return LintSeverity.warning;
      case LintLevel.error:
        return LintSeverity.error;
    }
  }
}
