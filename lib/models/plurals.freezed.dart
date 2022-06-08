// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plurals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Plurals _$PluralsFromJson(Map<String, dynamic> json) {
  return _Plurals.fromJson(json);
}

/// @nodoc
mixin _$Plurals {
  String? get zero => throw _privateConstructorUsedError;
  String? get few => throw _privateConstructorUsedError;
  String? get many => throw _privateConstructorUsedError;
  String? get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PluralsCopyWith<Plurals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PluralsCopyWith<$Res> {
  factory $PluralsCopyWith(Plurals value, $Res Function(Plurals) then) =
      _$PluralsCopyWithImpl<$Res>;
  $Res call({String? zero, String? few, String? many, String? other});
}

/// @nodoc
class _$PluralsCopyWithImpl<$Res> implements $PluralsCopyWith<$Res> {
  _$PluralsCopyWithImpl(this._value, this._then);

  final Plurals _value;
  // ignore: unused_field
  final $Res Function(Plurals) _then;

  @override
  $Res call({
    Object? zero = freezed,
    Object? few = freezed,
    Object? many = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      zero: zero == freezed
          ? _value.zero
          : zero // ignore: cast_nullable_to_non_nullable
              as String?,
      few: few == freezed
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: many == freezed
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PluralsCopyWith<$Res> implements $PluralsCopyWith<$Res> {
  factory _$$_PluralsCopyWith(
          _$_Plurals value, $Res Function(_$_Plurals) then) =
      __$$_PluralsCopyWithImpl<$Res>;
  @override
  $Res call({String? zero, String? few, String? many, String? other});
}

/// @nodoc
class __$$_PluralsCopyWithImpl<$Res> extends _$PluralsCopyWithImpl<$Res>
    implements _$$_PluralsCopyWith<$Res> {
  __$$_PluralsCopyWithImpl(_$_Plurals _value, $Res Function(_$_Plurals) _then)
      : super(_value, (v) => _then(v as _$_Plurals));

  @override
  _$_Plurals get _value => super._value as _$_Plurals;

  @override
  $Res call({
    Object? zero = freezed,
    Object? few = freezed,
    Object? many = freezed,
    Object? other = freezed,
  }) {
    return _then(_$_Plurals(
      zero: zero == freezed
          ? _value.zero
          : zero // ignore: cast_nullable_to_non_nullable
              as String?,
      few: few == freezed
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: many == freezed
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Plurals implements _Plurals {
  const _$_Plurals({this.zero, this.few, this.many, this.other});

  factory _$_Plurals.fromJson(Map<String, dynamic> json) =>
      _$$_PluralsFromJson(json);

  @override
  final String? zero;
  @override
  final String? few;
  @override
  final String? many;
  @override
  final String? other;

  @override
  String toString() {
    return 'Plurals(zero: $zero, few: $few, many: $many, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Plurals &&
            const DeepCollectionEquality().equals(other.zero, zero) &&
            const DeepCollectionEquality().equals(other.few, few) &&
            const DeepCollectionEquality().equals(other.many, many) &&
            const DeepCollectionEquality().equals(other.other, this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(zero),
      const DeepCollectionEquality().hash(few),
      const DeepCollectionEquality().hash(many),
      const DeepCollectionEquality().hash(other));

  @JsonKey(ignore: true)
  @override
  _$$_PluralsCopyWith<_$_Plurals> get copyWith =>
      __$$_PluralsCopyWithImpl<_$_Plurals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PluralsToJson(this);
  }
}

abstract class _Plurals implements Plurals {
  const factory _Plurals(
      {final String? zero,
      final String? few,
      final String? many,
      final String? other}) = _$_Plurals;

  factory _Plurals.fromJson(Map<String, dynamic> json) = _$_Plurals.fromJson;

  @override
  String? get zero => throw _privateConstructorUsedError;
  @override
  String? get few => throw _privateConstructorUsedError;
  @override
  String? get many => throw _privateConstructorUsedError;
  @override
  String? get other => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PluralsCopyWith<_$_Plurals> get copyWith =>
      throw _privateConstructorUsedError;
}
