// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Frame _$$_FrameFromJson(Map<String, dynamic> json) => _$_Frame(
      frameId: json['frame_id'] as String,
      frameName: json['frameName'] as String,
      blocks: json['blocks'] == null
          ? const []
          : const MapToBlockConverter()
              .fromJson(json['blocks'] as Map<String, dynamic>),
      otherText: json['otherText'] == null
          ? const []
          : const MapToTextConverter()
              .fromJson(json['otherText'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FrameToJson(_$_Frame instance) => <String, dynamic>{
      'frame_id': instance.frameId,
      'frameName': instance.frameName,
      'blocks': const MapToBlockConverter().toJson(instance.blocks),
      'otherText': const MapToTextConverter().toJson(instance.otherText),
    };
