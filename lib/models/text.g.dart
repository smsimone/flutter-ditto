// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Text _$$_TextFromJson(Map<String, dynamic> json) => _$_Text(
      text: json['text'] as String,
      status: json['status'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notes: json['notes'] as String?,
      isComp: json['is_comp'] as bool?,
    );

Map<String, dynamic> _$$_TextToJson(_$_Text instance) => <String, dynamic>{
      'text': instance.text,
      'status': instance.status,
      'tags': instance.tags,
      'notes': instance.notes,
      'is_comp': instance.isComp,
    };
