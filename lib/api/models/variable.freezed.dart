// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'variable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Variable _$VariableFromJson(Map<String, dynamic> json) {
  return _Variable.fromJson(json);
}

/// @nodoc
mixin _$Variable {
  @JsonKey(name: 'variable_name')
  String get variableName => throw _privateConstructorUsedError;

  /// The example value of the variable
  ///
  /// Can be:
  /// - a [String]
  /// - a [num]
  dynamic get example => throw _privateConstructorUsedError;

  /// The fallback value of the variable
  ///
  /// Can be:
  /// - a [String]
  /// - a [num]
  dynamic get fallback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariableCopyWith<Variable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableCopyWith<$Res> {
  factory $VariableCopyWith(Variable value, $Res Function(Variable) then) =
      _$VariableCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'variable_name') String variableName,
      dynamic example,
      dynamic fallback});
}

/// @nodoc
class _$VariableCopyWithImpl<$Res> implements $VariableCopyWith<$Res> {
  _$VariableCopyWithImpl(this._value, this._then);

  final Variable _value;
  // ignore: unused_field
  final $Res Function(Variable) _then;

  @override
  $Res call({
    Object? variableName = freezed,
    Object? example = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_value.copyWith(
      variableName: variableName == freezed
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fallback: fallback == freezed
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_VariableCopyWith<$Res> implements $VariableCopyWith<$Res> {
  factory _$$_VariableCopyWith(
          _$_Variable value, $Res Function(_$_Variable) then) =
      __$$_VariableCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'variable_name') String variableName,
      dynamic example,
      dynamic fallback});
}

/// @nodoc
class __$$_VariableCopyWithImpl<$Res> extends _$VariableCopyWithImpl<$Res>
    implements _$$_VariableCopyWith<$Res> {
  __$$_VariableCopyWithImpl(
      _$_Variable _value, $Res Function(_$_Variable) _then)
      : super(_value, (v) => _then(v as _$_Variable));

  @override
  _$_Variable get _value => super._value as _$_Variable;

  @override
  $Res call({
    Object? variableName = freezed,
    Object? example = freezed,
    Object? fallback = freezed,
  }) {
    return _then(_$_Variable(
      variableName: variableName == freezed
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fallback: fallback == freezed
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variable implements _Variable {
  const _$_Variable(
      {@JsonKey(name: 'variable_name') required this.variableName,
      this.example,
      this.fallback});

  factory _$_Variable.fromJson(Map<String, dynamic> json) =>
      _$$_VariableFromJson(json);

  @override
  @JsonKey(name: 'variable_name')
  final String variableName;

  /// The example value of the variable
  ///
  /// Can be:
  /// - a [String]
  /// - a [num]
  @override
  final dynamic example;

  /// The fallback value of the variable
  ///
  /// Can be:
  /// - a [String]
  /// - a [num]
  @override
  final dynamic fallback;

  @override
  String toString() {
    return 'Variable(variableName: $variableName, example: $example, fallback: $fallback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variable &&
            const DeepCollectionEquality()
                .equals(other.variableName, variableName) &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality().equals(other.fallback, fallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(variableName),
      const DeepCollectionEquality().hash(example),
      const DeepCollectionEquality().hash(fallback));

  @JsonKey(ignore: true)
  @override
  _$$_VariableCopyWith<_$_Variable> get copyWith =>
      __$$_VariableCopyWithImpl<_$_Variable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariableToJson(this);
  }
}

abstract class _Variable implements Variable {
  const factory _Variable(
      {@JsonKey(name: 'variable_name') required final String variableName,
      final dynamic example,
      final dynamic fallback}) = _$_Variable;

  factory _Variable.fromJson(Map<String, dynamic> json) = _$_Variable.fromJson;

  @override
  @JsonKey(name: 'variable_name')
  String get variableName => throw _privateConstructorUsedError;
  @override

  /// The example value of the variable
  ///
  /// Can be:
  /// - a [String]
  /// - a [num]
  dynamic get example => throw _privateConstructorUsedError;
  @override

  /// The fallback value of the variable
  ///
  /// Can be:
  /// - a [String]
  /// - a [num]
  dynamic get fallback => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VariableCopyWith<_$_Variable> get copyWith =>
      throw _privateConstructorUsedError;
}
