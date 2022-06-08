import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_name.freezed.dart';
part 'project_name.g.dart';

/// Represents a single project instance
@freezed
class ProjectName with _$ProjectName {
  /// Represents a single project instance
  const factory ProjectName({
    required String id,
    required String name,
    required String url,
  }) = _ProjectName;

  factory ProjectName.fromJson(Map<String, dynamic> json) =>
      _ProjectName.fromJson(json);
}
