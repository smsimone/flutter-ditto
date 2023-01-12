// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ditto_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DittoState {
  List<Locale> get locales => throw _privateConstructorUsedError;
  List<Text> get texts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DittoStateCopyWith<DittoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DittoStateCopyWith<$Res> {
  factory $DittoStateCopyWith(
          DittoState value, $Res Function(DittoState) then) =
      _$DittoStateCopyWithImpl<$Res, DittoState>;
  @useResult
  $Res call({List<Locale> locales, List<Text> texts});
}

/// @nodoc
class _$DittoStateCopyWithImpl<$Res, $Val extends DittoState>
    implements $DittoStateCopyWith<$Res> {
  _$DittoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locales = null,
    Object? texts = null,
  }) {
    return _then(_value.copyWith(
      locales: null == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<Text>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DittoStateCopyWith<$Res>
    implements $DittoStateCopyWith<$Res> {
  factory _$$_DittoStateCopyWith(
          _$_DittoState value, $Res Function(_$_DittoState) then) =
      __$$_DittoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Locale> locales, List<Text> texts});
}

/// @nodoc
class __$$_DittoStateCopyWithImpl<$Res>
    extends _$DittoStateCopyWithImpl<$Res, _$_DittoState>
    implements _$$_DittoStateCopyWith<$Res> {
  __$$_DittoStateCopyWithImpl(
      _$_DittoState _value, $Res Function(_$_DittoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locales = null,
    Object? texts = null,
  }) {
    return _then(_$_DittoState(
      locales: null == locales
          ? _value._locales
          : locales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<Text>,
    ));
  }
}

/// @nodoc

class _$_DittoState implements _DittoState {
  const _$_DittoState(
      {final List<Locale> locales = const [],
      final List<Text> texts = const []})
      : _locales = locales,
        _texts = texts;

  final List<Locale> _locales;
  @override
  @JsonKey()
  List<Locale> get locales {
    if (_locales is EqualUnmodifiableListView) return _locales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locales);
  }

  final List<Text> _texts;
  @override
  @JsonKey()
  List<Text> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  @override
  String toString() {
    return 'DittoState(locales: $locales, texts: $texts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DittoState &&
            const DeepCollectionEquality().equals(other._locales, _locales) &&
            const DeepCollectionEquality().equals(other._texts, _texts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_locales),
      const DeepCollectionEquality().hash(_texts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DittoStateCopyWith<_$_DittoState> get copyWith =>
      __$$_DittoStateCopyWithImpl<_$_DittoState>(this, _$identity);
}

abstract class _DittoState implements DittoState {
  const factory _DittoState(
      {final List<Locale> locales, final List<Text> texts}) = _$_DittoState;

  @override
  List<Locale> get locales;
  @override
  List<Text> get texts;
  @override
  @JsonKey(ignore: true)
  _$$_DittoStateCopyWith<_$_DittoState> get copyWith =>
      throw _privateConstructorUsedError;
}
