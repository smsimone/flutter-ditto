// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lint_levels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LintLevels _$LintLevelsFromJson(Map<String, dynamic> json) {
  return _LintLevels.fromJson(json);
}

/// @nodoc
mixin _$LintLevels {
  @JsonKey(name: 'hardcoded_string')
  LintLevel get hardcodedString => throw _privateConstructorUsedError;
  @JsonKey(name: 'invalid_ditto_keyword')
  LintLevel get invalidDittoKeyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LintLevelsCopyWith<LintLevels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LintLevelsCopyWith<$Res> {
  factory $LintLevelsCopyWith(
          LintLevels value, $Res Function(LintLevels) then) =
      _$LintLevelsCopyWithImpl<$Res, LintLevels>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hardcoded_string') LintLevel hardcodedString,
      @JsonKey(name: 'invalid_ditto_keyword') LintLevel invalidDittoKeyword});
}

/// @nodoc
class _$LintLevelsCopyWithImpl<$Res, $Val extends LintLevels>
    implements $LintLevelsCopyWith<$Res> {
  _$LintLevelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hardcodedString = null,
    Object? invalidDittoKeyword = null,
  }) {
    return _then(_value.copyWith(
      hardcodedString: null == hardcodedString
          ? _value.hardcodedString
          : hardcodedString // ignore: cast_nullable_to_non_nullable
              as LintLevel,
      invalidDittoKeyword: null == invalidDittoKeyword
          ? _value.invalidDittoKeyword
          : invalidDittoKeyword // ignore: cast_nullable_to_non_nullable
              as LintLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LintLevelsCopyWith<$Res>
    implements $LintLevelsCopyWith<$Res> {
  factory _$$_LintLevelsCopyWith(
          _$_LintLevels value, $Res Function(_$_LintLevels) then) =
      __$$_LintLevelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hardcoded_string') LintLevel hardcodedString,
      @JsonKey(name: 'invalid_ditto_keyword') LintLevel invalidDittoKeyword});
}

/// @nodoc
class __$$_LintLevelsCopyWithImpl<$Res>
    extends _$LintLevelsCopyWithImpl<$Res, _$_LintLevels>
    implements _$$_LintLevelsCopyWith<$Res> {
  __$$_LintLevelsCopyWithImpl(
      _$_LintLevels _value, $Res Function(_$_LintLevels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hardcodedString = null,
    Object? invalidDittoKeyword = null,
  }) {
    return _then(_$_LintLevels(
      hardcodedString: null == hardcodedString
          ? _value.hardcodedString
          : hardcodedString // ignore: cast_nullable_to_non_nullable
              as LintLevel,
      invalidDittoKeyword: null == invalidDittoKeyword
          ? _value.invalidDittoKeyword
          : invalidDittoKeyword // ignore: cast_nullable_to_non_nullable
              as LintLevel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LintLevels implements _LintLevels {
  const _$_LintLevels(
      {@JsonKey(name: 'hardcoded_string')
          this.hardcodedString = LintLevel.warning,
      @JsonKey(name: 'invalid_ditto_keyword')
          this.invalidDittoKeyword = LintLevel.error});

  factory _$_LintLevels.fromJson(Map<String, dynamic> json) =>
      _$$_LintLevelsFromJson(json);

  @override
  @JsonKey(name: 'hardcoded_string')
  final LintLevel hardcodedString;
  @override
  @JsonKey(name: 'invalid_ditto_keyword')
  final LintLevel invalidDittoKeyword;

  @override
  String toString() {
    return 'LintLevels(hardcodedString: $hardcodedString, invalidDittoKeyword: $invalidDittoKeyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LintLevels &&
            (identical(other.hardcodedString, hardcodedString) ||
                other.hardcodedString == hardcodedString) &&
            (identical(other.invalidDittoKeyword, invalidDittoKeyword) ||
                other.invalidDittoKeyword == invalidDittoKeyword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hardcodedString, invalidDittoKeyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LintLevelsCopyWith<_$_LintLevels> get copyWith =>
      __$$_LintLevelsCopyWithImpl<_$_LintLevels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LintLevelsToJson(
      this,
    );
  }
}

abstract class _LintLevels implements LintLevels {
  const factory _LintLevels(
      {@JsonKey(name: 'hardcoded_string')
          final LintLevel hardcodedString,
      @JsonKey(name: 'invalid_ditto_keyword')
          final LintLevel invalidDittoKeyword}) = _$_LintLevels;

  factory _LintLevels.fromJson(Map<String, dynamic> json) =
      _$_LintLevels.fromJson;

  @override
  @JsonKey(name: 'hardcoded_string')
  LintLevel get hardcodedString;
  @override
  @JsonKey(name: 'invalid_ditto_keyword')
  LintLevel get invalidDittoKeyword;
  @override
  @JsonKey(ignore: true)
  _$$_LintLevelsCopyWith<_$_LintLevels> get copyWith =>
      throw _privateConstructorUsedError;
}
