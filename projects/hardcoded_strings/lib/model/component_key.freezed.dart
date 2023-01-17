// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComponentKey _$ComponentKeyFromJson(Map<String, dynamic> json) {
  return _ComponentKey.fromJson(json);
}

/// @nodoc
mixin _$ComponentKey {
  String? get defaultKey => throw _privateConstructorUsedError;
  String? get componentKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComponentKeyCopyWith<ComponentKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentKeyCopyWith<$Res> {
  factory $ComponentKeyCopyWith(
          ComponentKey value, $Res Function(ComponentKey) then) =
      _$ComponentKeyCopyWithImpl<$Res, ComponentKey>;
  @useResult
  $Res call({String? defaultKey, String? componentKey});
}

/// @nodoc
class _$ComponentKeyCopyWithImpl<$Res, $Val extends ComponentKey>
    implements $ComponentKeyCopyWith<$Res> {
  _$ComponentKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultKey = freezed,
    Object? componentKey = freezed,
  }) {
    return _then(_value.copyWith(
      defaultKey: freezed == defaultKey
          ? _value.defaultKey
          : defaultKey // ignore: cast_nullable_to_non_nullable
              as String?,
      componentKey: freezed == componentKey
          ? _value.componentKey
          : componentKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComponentKeyCopyWith<$Res>
    implements $ComponentKeyCopyWith<$Res> {
  factory _$$_ComponentKeyCopyWith(
          _$_ComponentKey value, $Res Function(_$_ComponentKey) then) =
      __$$_ComponentKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? defaultKey, String? componentKey});
}

/// @nodoc
class __$$_ComponentKeyCopyWithImpl<$Res>
    extends _$ComponentKeyCopyWithImpl<$Res, _$_ComponentKey>
    implements _$$_ComponentKeyCopyWith<$Res> {
  __$$_ComponentKeyCopyWithImpl(
      _$_ComponentKey _value, $Res Function(_$_ComponentKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultKey = freezed,
    Object? componentKey = freezed,
  }) {
    return _then(_$_ComponentKey(
      defaultKey: freezed == defaultKey
          ? _value.defaultKey
          : defaultKey // ignore: cast_nullable_to_non_nullable
              as String?,
      componentKey: freezed == componentKey
          ? _value.componentKey
          : componentKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComponentKey implements _ComponentKey {
  const _$_ComponentKey({this.defaultKey, this.componentKey});

  factory _$_ComponentKey.fromJson(Map<String, dynamic> json) =>
      _$$_ComponentKeyFromJson(json);

  @override
  final String? defaultKey;
  @override
  final String? componentKey;

  @override
  String toString() {
    return 'ComponentKey(defaultKey: $defaultKey, componentKey: $componentKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComponentKey &&
            (identical(other.defaultKey, defaultKey) ||
                other.defaultKey == defaultKey) &&
            (identical(other.componentKey, componentKey) ||
                other.componentKey == componentKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, defaultKey, componentKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComponentKeyCopyWith<_$_ComponentKey> get copyWith =>
      __$$_ComponentKeyCopyWithImpl<_$_ComponentKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComponentKeyToJson(
      this,
    );
  }
}

abstract class _ComponentKey implements ComponentKey {
  const factory _ComponentKey(
      {final String? defaultKey, final String? componentKey}) = _$_ComponentKey;

  factory _ComponentKey.fromJson(Map<String, dynamic> json) =
      _$_ComponentKey.fromJson;

  @override
  String? get defaultKey;
  @override
  String? get componentKey;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentKeyCopyWith<_$_ComponentKey> get copyWith =>
      throw _privateConstructorUsedError;
}
