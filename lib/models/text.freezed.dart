// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  @JsonKey(name: 'key', includeIfNull: false)
  String? get key => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get variables => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Plurals? get plurals => throw _privateConstructorUsedError;
  @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
  Map<String, Text>? get variants => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  @JsonKey(name: 'is_comp')
  bool? get isComp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'key', includeIfNull: false)
          String? key,
      String text,
      @JsonKey(includeIfNull: false)
          String? status,
      @JsonKey(includeIfNull: false)
          String? notes,
      @JsonKey(includeIfNull: false)
          Map<String, dynamic>? variables,
      @JsonKey(includeIfNull: false)
          Plurals? plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          bool? isComp});

  $PluralsCopyWith<$Res>? get plurals;
}

/// @nodoc
class _$TextCopyWithImpl<$Res> implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  final Text _value;
  // ignore: unused_field
  final $Res Function(Text) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? text = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? variables = freezed,
    Object? plurals = freezed,
    Object? variants = freezed,
    Object? tags = freezed,
    Object? isComp = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: variables == freezed
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      plurals: plurals == freezed
          ? _value.plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as Plurals?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as Map<String, Text>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isComp: isComp == freezed
          ? _value.isComp
          : isComp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $PluralsCopyWith<$Res>? get plurals {
    if (_value.plurals == null) {
      return null;
    }

    return $PluralsCopyWith<$Res>(_value.plurals!, (value) {
      return _then(_value.copyWith(plurals: value));
    });
  }
}

/// @nodoc
abstract class _$$_TextCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$$_TextCopyWith(_$_Text value, $Res Function(_$_Text) then) =
      __$$_TextCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'key', includeIfNull: false)
          String? key,
      String text,
      @JsonKey(includeIfNull: false)
          String? status,
      @JsonKey(includeIfNull: false)
          String? notes,
      @JsonKey(includeIfNull: false)
          Map<String, dynamic>? variables,
      @JsonKey(includeIfNull: false)
          Plurals? plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          bool? isComp});

  @override
  $PluralsCopyWith<$Res>? get plurals;
}

/// @nodoc
class __$$_TextCopyWithImpl<$Res> extends _$TextCopyWithImpl<$Res>
    implements _$$_TextCopyWith<$Res> {
  __$$_TextCopyWithImpl(_$_Text _value, $Res Function(_$_Text) _then)
      : super(_value, (v) => _then(v as _$_Text));

  @override
  _$_Text get _value => super._value as _$_Text;

  @override
  $Res call({
    Object? key = freezed,
    Object? text = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? variables = freezed,
    Object? plurals = freezed,
    Object? variants = freezed,
    Object? tags = freezed,
    Object? isComp = freezed,
  }) {
    return _then(_$_Text(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      variables: variables == freezed
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      plurals: plurals == freezed
          ? _value.plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as Plurals?,
      variants: variants == freezed
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as Map<String, Text>?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isComp: isComp == freezed
          ? _value.isComp
          : isComp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Text implements _Text {
  const _$_Text(
      {@JsonKey(name: 'key', includeIfNull: false)
          this.key,
      required this.text,
      @JsonKey(includeIfNull: false)
          this.status,
      @JsonKey(includeIfNull: false)
          this.notes,
      @JsonKey(includeIfNull: false)
          final Map<String, dynamic>? variables,
      @JsonKey(includeIfNull: false)
          this.plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          final Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          final List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          this.isComp})
      : _variables = variables,
        _variants = variants,
        _tags = tags;

  factory _$_Text.fromJson(Map<String, dynamic> json) => _$$_TextFromJson(json);

  /// Viene valorizzato solo se è una chiave di primo livello
  ///
  /// Per le varianti è nullo
  @override
  @JsonKey(name: 'key', includeIfNull: false)
  final String? key;
  @override
  final String text;
  @override
  @JsonKey(includeIfNull: false)
  final String? status;
  @override
  @JsonKey(includeIfNull: false)
  final String? notes;
  final Map<String, dynamic>? _variables;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get variables {
    final value = _variables;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<String>? _tags;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(includeIfNull: false)
  @JsonKey(name: 'is_comp')
  final bool? isComp;

  @override
  String toString() {
    return 'Text(key: $key, text: $text, status: $status, notes: $notes, variables: $variables, plurals: $plurals, variants: $variants, tags: $tags, isComp: $isComp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Text &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            const DeepCollectionEquality().equals(other.plurals, plurals) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.isComp, isComp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(_variables),
      const DeepCollectionEquality().hash(plurals),
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(isComp));

  @JsonKey(ignore: true)
  @override
  _$$_TextCopyWith<_$_Text> get copyWith =>
      __$$_TextCopyWithImpl<_$_Text>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextToJson(this);
  }
}

abstract class _Text implements Text {
  const factory _Text(
      {@JsonKey(name: 'key', includeIfNull: false)
          final String? key,
      required final String text,
      @JsonKey(includeIfNull: false)
          final String? status,
      @JsonKey(includeIfNull: false)
          final String? notes,
      @JsonKey(includeIfNull: false)
          final Map<String, dynamic>? variables,
      @JsonKey(includeIfNull: false)
          final Plurals? plurals,
      @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
          final Map<String, Text>? variants,
      @JsonKey(includeIfNull: false)
          final List<String>? tags,
      @JsonKey(includeIfNull: false)
      @JsonKey(name: 'is_comp')
          final bool? isComp}) = _$_Text;

  factory _Text.fromJson(Map<String, dynamic> json) = _$_Text.fromJson;

  @override

  /// Viene valorizzato solo se è una chiave di primo livello
  ///
  /// Per le varianti è nullo
  @JsonKey(name: 'key', includeIfNull: false)
  String? get key => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get variables => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  Plurals? get plurals => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: variantsFromJson, includeIfNull: false)
  Map<String, Text>? get variants => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  @JsonKey(name: 'is_comp')
  bool? get isComp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TextCopyWith<_$_Text> get copyWith => throw _privateConstructorUsedError;
}
