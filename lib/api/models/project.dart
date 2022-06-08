import 'package:ditto_sdk/api/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    @JsonKey(name: 'project_id') required String projectId,
    @JsonKey(name: 'project_name') required String projectName,
    @MapToFrameConverter() required List<Frame> frames,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _Project.fromJson(json);
}
