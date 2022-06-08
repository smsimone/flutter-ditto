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
  String get text => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
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
      {String text,
      String? status,
      List<String>? tags,
      String? notes,
      @JsonKey(name: 'is_comp') bool? isComp});
}

/// @nodoc
class _$TextCopyWithImpl<$Res> implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  final Text _value;
  // ignore: unused_field
  final $Res Function(Text) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? status = freezed,
    Object? tags = freezed,
    Object? notes = freezed,
    Object? isComp = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isComp: isComp == freezed
          ? _value.isComp
          : isComp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_TextCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$$_TextCopyWith(_$_Text value, $Res Function(_$_Text) then) =
      __$$_TextCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      String? status,
      List<String>? tags,
      String? notes,
      @JsonKey(name: 'is_comp') bool? isComp});
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
    Object? text = freezed,
    Object? status = freezed,
    Object? tags = freezed,
    Object? notes = freezed,
    Object? isComp = freezed,
  }) {
    return _then(_$_Text(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {required this.text,
      this.status,
      final List<String>? tags,
      this.notes,
      @JsonKey(name: 'is_comp') this.isComp})
      : _tags = tags;

  factory _$_Text.fromJson(Map<String, dynamic> json) => _$$_TextFromJson(json);

  @override
  final String text;
  @override
  final String? status;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;
  @override
  @JsonKey(name: 'is_comp')
  final bool? isComp;

  @override
  String toString() {
    return 'Text(text: $text, status: $status, tags: $tags, notes: $notes, isComp: $isComp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Text &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality().equals(other.isComp, isComp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(notes),
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
      {required final String text,
      final String? status,
      final List<String>? tags,
      final String? notes,
      @JsonKey(name: 'is_comp') final bool? isComp}) = _$_Text;

  factory _Text.fromJson(Map<String, dynamic> json) = _$_Text.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  String? get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_comp')
  bool? get isComp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TextCopyWith<_$_Text> get copyWith => throw _privateConstructorUsedError;
}
