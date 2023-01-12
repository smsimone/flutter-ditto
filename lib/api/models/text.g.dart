// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Text _$$_TextFromJson(Map<String, dynamic> json) => _$_Text(
      key: json['key'] as String?,
      text: json['text'] as String,
      status: json['status'] as String?,
      notes: json['notes'] as String?,
      variables: variablesFromJson(json['variables'] as Map<String, dynamic>?),
      plurals: json['plurals'] == null
          ? null
          : Plurals.fromJson(json['plurals'] as Map<String, dynamic>),
      variants: variantsFromJson(json['variants'] as Map<String, dynamic>?),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isComp: json['isComp'] as bool?,
      componentId: json['component_api_id'] as String?,
    );

Map<String, dynamic> _$$_TextToJson(_$_Text instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  val['text'] = instance.text;
  writeNotNull('status', instance.status);
  writeNotNull('notes', instance.notes);
  val['variables'] = variablesToJson(instance.variables);
  writeNotNull('plurals', instance.plurals);
  writeNotNull('variants', instance.variants);
  writeNotNull('tags', instance.tags);
  writeNotNull('isComp', instance.isComp);
  val['component_api_id'] = instance.componentId;
  return val;
}
