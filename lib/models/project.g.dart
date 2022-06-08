// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      projectId: json['project_id'] as String,
      projectName: json['project_name'] as String,
      frames: const MapToFrameConverter()
          .fromJson(json['frames'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'project_id': instance.projectId,
      'project_name': instance.projectName,
      'frames': const MapToFrameConverter().toJson(instance.frames),
    };
