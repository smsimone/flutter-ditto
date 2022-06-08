// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Block _$BlockFromJson(Map<String, dynamic> json) {
  return _Block.fromJson(json);
}

/// @nodoc
mixin _$Block {
  String get blockName => throw _privateConstructorUsedError;
  List<Text> get texts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockCopyWith<Block> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockCopyWith<$Res> {
  factory $BlockCopyWith(Block value, $Res Function(Block) then) =
      _$BlockCopyWithImpl<$Res>;
  $Res call({String blockName, List<Text> texts});
}

/// @nodoc
class _$BlockCopyWithImpl<$Res> implements $BlockCopyWith<$Res> {
  _$BlockCopyWithImpl(this._value, this._then);

  final Block _value;
  // ignore: unused_field
  final $Res Function(Block) _then;

  @override
  $Res call({
    Object? blockName = freezed,
    Object? texts = freezed,
  }) {
    return _then(_value.copyWith(
      blockName: blockName == freezed
          ? _value.blockName
          : blockName // ignore: cast_nullable_to_non_nullable
              as String,
      texts: texts == freezed
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<Text>,
    ));
  }
}

/// @nodoc
abstract class _$$_BlockCopyWith<$Res> implements $BlockCopyWith<$Res> {
  factory _$$_BlockCopyWith(_$_Block value, $Res Function(_$_Block) then) =
      __$$_BlockCopyWithImpl<$Res>;
  @override
  $Res call({String blockName, List<Text> texts});
}

/// @nodoc
class __$$_BlockCopyWithImpl<$Res> extends _$BlockCopyWithImpl<$Res>
    implements _$$_BlockCopyWith<$Res> {
  __$$_BlockCopyWithImpl(_$_Block _value, $Res Function(_$_Block) _then)
      : super(_value, (v) => _then(v as _$_Block));

  @override
  _$_Block get _value => super._value as _$_Block;

  @override
  $Res call({
    Object? blockName = freezed,
    Object? texts = freezed,
  }) {
    return _then(_$_Block(
      blockName: blockName == freezed
          ? _value.blockName
          : blockName // ignore: cast_nullable_to_non_nullable
              as String,
      texts: texts == freezed
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<Text>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Block implements _Block {
  const _$_Block({required this.blockName, required final List<Text> texts})
      : _texts = texts;

  factory _$_Block.fromJson(Map<String, dynamic> json) =>
      _$$_BlockFromJson(json);

  @override
  final String blockName;
  final List<Text> _texts;
  @override
  List<Text> get texts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  @override
  String toString() {
    return 'Block(blockName: $blockName, texts: $texts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Block &&
            const DeepCollectionEquality().equals(other.blockName, blockName) &&
            const DeepCollectionEquality().equals(other._texts, _texts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blockName),
      const DeepCollectionEquality().hash(_texts));

  @JsonKey(ignore: true)
  @override
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      __$$_BlockCopyWithImpl<_$_Block>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockToJson(this);
  }
}

abstract class _Block implements Block {
  const factory _Block(
      {required final String blockName,
      required final List<Text> texts}) = _$_Block;

  factory _Block.fromJson(Map<String, dynamic> json) = _$_Block.fromJson;

  @override
  String get blockName => throw _privateConstructorUsedError;
  @override
  List<Text> get texts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      throw _privateConstructorUsedError;
}
