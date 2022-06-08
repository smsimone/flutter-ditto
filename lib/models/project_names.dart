import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_names.freezed.dart';
part 'project_names.g.dart';

/// Represents a single project instance
@freezed
class ProjectNames with _$ProjectNames {
  /// Represents a single project instance
  const factory ProjectNames({
    required String id,
    required String name,
    required String url,
  }) = _ProjectNames;

  factory ProjectNames.fromJson(Map<String, dynamic> json) =>
      _ProjectNames.fromJson(json);
}
