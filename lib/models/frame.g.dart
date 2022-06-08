// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Frame _$$_FrameFromJson(Map<String, dynamic> json) => _$_Frame(
      frameName: json['frameName'] as String,
      blocks: json['blocks'] as List<dynamic>? ?? const [],
      otherText: (json['otherText'] as List<dynamic>?)
              ?.map((e) => Text.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FrameToJson(_$_Frame instance) => <String, dynamic>{
      'frameName': instance.frameName,
      'blocks': instance.blocks,
      'otherText': instance.otherText,
    };
