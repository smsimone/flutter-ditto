// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Text _$TextFromJson(Map<String, dynamic> json) {
  return _Text.fromJson(json);
}

/// @nodoc
mixin _$Text {
  /// Viene valorizzato solo se è una chiave di primo livello
  ///
  /// Per le varianti è nullo
  @JsonKey(name: 'api_id', includeIfNull: false)
  String? get key => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(
      includeIfNull: false,
      fromJson: variablesFromJson,
      toJson: variablesToJson)
  List<Variable>? get variables => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Plurals? get plurals => throw _privateConstructorUsedError;
  @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
  Map<String, Text>? get variants => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  @JsonKey(name: 'is_comp')
  bool? get isComp => throw _privateConstructorUsedError;
  @JsonKey(name: 'component_api_id')
  String? get componentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res, Text>;
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id', includeIfNull: false)
          String? key,
      String text,
      @JsonKey(includeIfNull: false)
          String? status,
      @JsonKey(includeIfNull: false)
          String? notes,
      @JsonKey(includeIfNull: false, fromJson: variablesFromJson, toJson: variablesToJson)
          List<Variable>? variables,
      @JsonKey(includeIfNull: false)
          Plurals? plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          bool? isComp,
      @JsonKey(name: 'component_api_id')
          String? componentId});

  $PluralsCopyWith<$Res>? get plurals;
}

/// @nodoc
class _$TextCopyWithImpl<$Res, $Val extends Text>
    implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? text = null,
    Object? status = freezed,
    Object? notes = freezed,
    Object? variables = freezed,
    Object? plurals = freezed,
    Object? variants = freezed,
    Object? tags = freezed,
    Object? isComp = freezed,
    Object? componentId = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: freezed == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<Variable>?,
      plurals: freezed == plurals
          ? _value.plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as Plurals?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as Map<String, Text>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isComp: freezed == isComp
          ? _value.isComp
          : isComp // ignore: cast_nullable_to_non_nullable
              as bool?,
      componentId: freezed == componentId
          ? _value.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PluralsCopyWith<$Res>? get plurals {
    if (_value.plurals == null) {
      return null;
    }

    return $PluralsCopyWith<$Res>(_value.plurals!, (value) {
      return _then(_value.copyWith(plurals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TextCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$$_TextCopyWith(_$_Text value, $Res Function(_$_Text) then) =
      __$$_TextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'api_id', includeIfNull: false)
          String? key,
      String text,
      @JsonKey(includeIfNull: false)
          String? status,
      @JsonKey(includeIfNull: false)
          String? notes,
      @JsonKey(includeIfNull: false, fromJson: variablesFromJson, toJson: variablesToJson)
          List<Variable>? variables,
      @JsonKey(includeIfNull: false)
          Plurals? plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          bool? isComp,
      @JsonKey(name: 'component_api_id')
          String? componentId});

  @override
  $PluralsCopyWith<$Res>? get plurals;
}

/// @nodoc
class __$$_TextCopyWithImpl<$Res> extends _$TextCopyWithImpl<$Res, _$_Text>
    implements _$$_TextCopyWith<$Res> {
  __$$_TextCopyWithImpl(_$_Text _value, $Res Function(_$_Text) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? text = null,
    Object? status = freezed,
    Object? notes = freezed,
    Object? variables = freezed,
    Object? plurals = freezed,
    Object? variants = freezed,
    Object? tags = freezed,
    Object? isComp = freezed,
    Object? componentId = freezed,
  }) {
    return _then(_$_Text(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: freezed == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as List<Variable>?,
      plurals: freezed == plurals
          ? _value.plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as Plurals?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as Map<String, Text>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isComp: freezed == isComp
          ? _value.isComp
          : isComp // ignore: cast_nullable_to_non_nullable
              as bool?,
      componentId: freezed == componentId
          ? _value.componentId
          : componentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Text extends _Text {
  const _$_Text(
      {@JsonKey(name: 'api_id', includeIfNull: false)
          this.key,
      required this.text,
      @JsonKey(includeIfNull: false)
          this.status,
      @JsonKey(includeIfNull: false)
          this.notes,
      @JsonKey(includeIfNull: false, fromJson: variablesFromJson, toJson: variablesToJson)
          final List<Variable>? variables,
      @JsonKey(includeIfNull: false)
          this.plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          final Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          final List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          this.isComp,
      @JsonKey(name: 'component_api_id')
          this.componentId})
      : _variables = variables,
        _variants = variants,
        _tags = tags,
        super._();

  factory _$_Text.fromJson(Map<String, dynamic> json) => _$$_TextFromJson(json);

  /// Viene valorizzato solo se è una chiave di primo livello
  ///
  /// Per le varianti è nullo
  @override
  @JsonKey(name: 'api_id', includeIfNull: false)
  final String? key;
  @override
  final String text;
  @override
  @JsonKey(includeIfNull: false)
  final String? status;
  @override
  @JsonKey(includeIfNull: false)
  final String? notes;
  final List<Variable>? _variables;
  @override
  @JsonKey(
      includeIfNull: false,
      fromJson: variablesFromJson,
      toJson: variablesToJson)
  List<Variable>? get variables {
    final value = _variables;
    if (value == null) return null;
    if (_variables is EqualUnmodifiableListView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  final Plurals? plurals;
  final Map<String, Text>? _variants;
  @override
  @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
  Map<String, Text>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableMapView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _tags;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  @JsonKey(name: 'is_comp')
  final bool? isComp;
  @override
  @JsonKey(name: 'component_api_id')
  final String? componentId;

  @override
  String toString() {
    return 'Text(key: $key, text: $text, status: $status, notes: $notes, variables: $variables, plurals: $plurals, variants: $variants, tags: $tags, isComp: $isComp, componentId: $componentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Text &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            (identical(other.plurals, plurals) || other.plurals == plurals) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isComp, isComp) || other.isComp == isComp) &&
            (identical(other.componentId, componentId) ||
                other.componentId == componentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      text,
      status,
      notes,
      const DeepCollectionEquality().hash(_variables),
      plurals,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_tags),
      isComp,
      componentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextCopyWith<_$_Text> get copyWith =>
      __$$_TextCopyWithImpl<_$_Text>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextToJson(
      this,
    );
  }
}

abstract class _Text extends Text {
  const factory _Text(
      {@JsonKey(name: 'api_id', includeIfNull: false)
          final String? key,
      required final String text,
      @JsonKey(includeIfNull: false)
          final String? status,
      @JsonKey(includeIfNull: false)
          final String? notes,
      @JsonKey(includeIfNull: false, fromJson: variablesFromJson, toJson: variablesToJson)
          final List<Variable>? variables,
      @JsonKey(includeIfNull: false)
          final Plurals? plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          final Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          final List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          final bool? isComp,
      @JsonKey(name: 'component_api_id')
          final String? componentId}) = _$_Text;
  const _Text._() : super._();

  factory _Text.fromJson(Map<String, dynamic> json) = _$_Text.fromJson;

  @override

  /// Viene valorizzato solo se è una chiave di primo livello
  ///
  /// Per le varianti è nullo
  @JsonKey(name: 'api_id', includeIfNull: false)
  String? get key;
  @override
  String get text;
  @override
  @JsonKey(includeIfNull: false)
  String? get status;
  @override
  @JsonKey(includeIfNull: false)
  String? get notes;
  @override
  @JsonKey(
      includeIfNull: false,
      fromJson: variablesFromJson,
      toJson: variablesToJson)
  List<Variable>? get variables;
  @override
  @JsonKey(includeIfNull: false)
  Plurals? get plurals;
  @override
  @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
  Map<String, Text>? get variants;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get tags;
  @override
  @JsonKey(includeIfNull: false)
  @JsonKey(name: 'is_comp')
  bool? get isComp;
  @override
  @JsonKey(name: 'component_api_id')
  String? get componentId;
  @override
  @JsonKey(ignore: true)
  _$$_TextCopyWith<_$_Text> get copyWith => throw _privateConstructorUsedError;
}
