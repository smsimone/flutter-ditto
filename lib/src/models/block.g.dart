// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Block _$$_BlockFromJson(Map<String, dynamic> json) => _$_Block(
      blockName: json['blockName'] as String,
      texts: (json['texts'] as List<dynamic>)
          .map((e) => Text.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BlockToJson(_$_Block instance) => <String, dynamic>{
      'blockName': instance.blockName,
      'texts': instance.texts,
    };
