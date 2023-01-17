// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String? get one => throw _privateConstructorUsedError;
  String? get two => throw _privateConstructorUsedError;
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
      _$PluralsCopyWithImpl<$Res, Plurals>;
  @useResult
  $Res call(
      {String? zero,
      String? one,
      String? two,
      String? few,
      String? many,
      String? other});
}

/// @nodoc
class _$PluralsCopyWithImpl<$Res, $Val extends Plurals>
    implements $PluralsCopyWith<$Res> {
  _$PluralsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zero = freezed,
    Object? one = freezed,
    Object? two = freezed,
    Object? few = freezed,
    Object? many = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      zero: freezed == zero
          ? _value.zero
          : zero // ignore: cast_nullable_to_non_nullable
              as String?,
      one: freezed == one
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as String?,
      two: freezed == two
          ? _value.two
          : two // ignore: cast_nullable_to_non_nullable
              as String?,
      few: freezed == few
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: freezed == many
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PluralsCopyWith<$Res> implements $PluralsCopyWith<$Res> {
  factory _$$_PluralsCopyWith(
          _$_Plurals value, $Res Function(_$_Plurals) then) =
      __$$_PluralsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? zero,
      String? one,
      String? two,
      String? few,
      String? many,
      String? other});
}

/// @nodoc
class __$$_PluralsCopyWithImpl<$Res>
    extends _$PluralsCopyWithImpl<$Res, _$_Plurals>
    implements _$$_PluralsCopyWith<$Res> {
  __$$_PluralsCopyWithImpl(_$_Plurals _value, $Res Function(_$_Plurals) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zero = freezed,
    Object? one = freezed,
    Object? two = freezed,
    Object? few = freezed,
    Object? many = freezed,
    Object? other = freezed,
  }) {
    return _then(_$_Plurals(
      zero: freezed == zero
          ? _value.zero
          : zero // ignore: cast_nullable_to_non_nullable
              as String?,
      one: freezed == one
          ? _value.one
          : one // ignore: cast_nullable_to_non_nullable
              as String?,
      two: freezed == two
          ? _value.two
          : two // ignore: cast_nullable_to_non_nullable
              as String?,
      few: freezed == few
          ? _value.few
          : few // ignore: cast_nullable_to_non_nullable
              as String?,
      many: freezed == many
          ? _value.many
          : many // ignore: cast_nullable_to_non_nullable
              as String?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Plurals extends _Plurals {
  const _$_Plurals(
      {this.zero, this.one, this.two, this.few, this.many, this.other})
      : super._();

  factory _$_Plurals.fromJson(Map<String, dynamic> json) =>
      _$$_PluralsFromJson(json);

  @override
  final String? zero;
  @override
  final String? one;
  @override
  final String? two;
  @override
  final String? few;
  @override
  final String? many;
  @override
  final String? other;

  @override
  String toString() {
    return 'Plurals(zero: $zero, one: $one, two: $two, few: $few, many: $many, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Plurals &&
            (identical(other.zero, zero) || other.zero == zero) &&
            (identical(other.one, one) || other.one == one) &&
            (identical(other.two, two) || other.two == two) &&
            (identical(other.few, few) || other.few == few) &&
            (identical(other.many, many) || other.many == many) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, zero, one, two, few, many, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PluralsCopyWith<_$_Plurals> get copyWith =>
      __$$_PluralsCopyWithImpl<_$_Plurals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PluralsToJson(
      this,
    );
  }
}

abstract class _Plurals extends Plurals {
  const factory _Plurals(
      {final String? zero,
      final String? one,
      final String? two,
      final String? few,
      final String? many,
      final String? other}) = _$_Plurals;
  const _Plurals._() : super._();

  factory _Plurals.fromJson(Map<String, dynamic> json) = _$_Plurals.fromJson;

  @override
  String? get zero;
  @override
  String? get one;
  @override
  String? get two;
  @override
  String? get few;
  @override
  String? get many;
  @override
  String? get other;
  @override
  @JsonKey(ignore: true)
  _$$_PluralsCopyWith<_$_Plurals> get copyWith =>
      throw _privateConstructorUsedError;
}
