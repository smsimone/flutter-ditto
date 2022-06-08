// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'frame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Frame _$FrameFromJson(Map<String, dynamic> json) {
  return _Frame.fromJson(json);
}

/// @nodoc
mixin _$Frame {
  @JsonKey(name: 'frame_id')
  String get frameId => throw _privateConstructorUsedError;
  String get frameName => throw _privateConstructorUsedError;
  @MapToBlockConverter()
  List<Block> get blocks => throw _privateConstructorUsedError;
  @MapToTextConverter()
  List<Text> get otherText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrameCopyWith<Frame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameCopyWith<$Res> {
  factory $FrameCopyWith(Frame value, $Res Function(Frame) then) =
      _$FrameCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'frame_id') String frameId,
      String frameName,
      @MapToBlockConverter() List<Block> blocks,
      @MapToTextConverter() List<Text> otherText});
}

/// @nodoc
class _$FrameCopyWithImpl<$Res> implements $FrameCopyWith<$Res> {
  _$FrameCopyWithImpl(this._value, this._then);

  final Frame _value;
  // ignore: unused_field
  final $Res Function(Frame) _then;

  @override
  $Res call({
    Object? frameId = freezed,
    Object? frameName = freezed,
    Object? blocks = freezed,
    Object? otherText = freezed,
  }) {
    return _then(_value.copyWith(
      frameId: frameId == freezed
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as String,
      frameName: frameName == freezed
          ? _value.frameName
          : frameName // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: blocks == freezed
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
      otherText: otherText == freezed
          ? _value.otherText
          : otherText // ignore: cast_nullable_to_non_nullable
              as List<Text>,
    ));
  }
}

/// @nodoc
abstract class _$$_FrameCopyWith<$Res> implements $FrameCopyWith<$Res> {
  factory _$$_FrameCopyWith(_$_Frame value, $Res Function(_$_Frame) then) =
      __$$_FrameCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'frame_id') String frameId,
      String frameName,
      @MapToBlockConverter() List<Block> blocks,
      @MapToTextConverter() List<Text> otherText});
}

/// @nodoc
class __$$_FrameCopyWithImpl<$Res> extends _$FrameCopyWithImpl<$Res>
    implements _$$_FrameCopyWith<$Res> {
  __$$_FrameCopyWithImpl(_$_Frame _value, $Res Function(_$_Frame) _then)
      : super(_value, (v) => _then(v as _$_Frame));

  @override
  _$_Frame get _value => super._value as _$_Frame;

  @override
  $Res call({
    Object? frameId = freezed,
    Object? frameName = freezed,
    Object? blocks = freezed,
    Object? otherText = freezed,
  }) {
    return _then(_$_Frame(
      frameId: frameId == freezed
          ? _value.frameId
          : frameId // ignore: cast_nullable_to_non_nullable
              as String,
      frameName: frameName == freezed
          ? _value.frameName
          : frameName // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: blocks == freezed
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
      otherText: otherText == freezed
          ? _value._otherText
          : otherText // ignore: cast_nullable_to_non_nullable
              as List<Text>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Frame implements _Frame {
  const _$_Frame(
      {@JsonKey(name: 'frame_id') required this.frameId,
      required this.frameName,
      @MapToBlockConverter() final List<Block> blocks = const [],
      @MapToTextConverter() final List<Text> otherText = const []})
      : _blocks = blocks,
        _otherText = otherText;

  factory _$_Frame.fromJson(Map<String, dynamic> json) =>
      _$$_FrameFromJson(json);

  @override
  @JsonKey(name: 'frame_id')
  final String frameId;
  @override
  final String frameName;
  final List<Block> _blocks;
  @override
  @JsonKey()
  @MapToBlockConverter()
  List<Block> get blocks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  final List<Text> _otherText;
  @override
  @JsonKey()
  @MapToTextConverter()
  List<Text> get otherText {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherText);
  }

  @override
  String toString() {
    return 'Frame(frameId: $frameId, frameName: $frameName, blocks: $blocks, otherText: $otherText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Frame &&
            const DeepCollectionEquality().equals(other.frameId, frameId) &&
            const DeepCollectionEquality().equals(other.frameName, frameName) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            const DeepCollectionEquality()
                .equals(other._otherText, _otherText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(frameId),
      const DeepCollectionEquality().hash(frameName),
      const DeepCollectionEquality().hash(_blocks),
      const DeepCollectionEquality().hash(_otherText));

  @JsonKey(ignore: true)
  @override
  _$$_FrameCopyWith<_$_Frame> get copyWith =>
      __$$_FrameCopyWithImpl<_$_Frame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrameToJson(this);
  }
}

abstract class _Frame implements Frame {
  const factory _Frame(
      {@JsonKey(name: 'frame_id') required final String frameId,
      required final String frameName,
      @MapToBlockConverter() final List<Block> blocks,
      @MapToTextConverter() final List<Text> otherText}) = _$_Frame;

  factory _Frame.fromJson(Map<String, dynamic> json) = _$_Frame.fromJson;

  @override
  @JsonKey(name: 'frame_id')
  String get frameId => throw _privateConstructorUsedError;
  @override
  String get frameName => throw _privateConstructorUsedError;
  @override
  @MapToBlockConverter()
  List<Block> get blocks => throw _privateConstructorUsedError;
  @override
  @MapToTextConverter()
  List<Text> get otherText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FrameCopyWith<_$_Frame> get copyWith =>
      throw _privateConstructorUsedError;
}
