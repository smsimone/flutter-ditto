// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectName _$ProjectNameFromJson(Map<String, dynamic> json) {
  return _ProjectName.fromJson(json);
}

/// @nodoc
mixin _$ProjectName {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectNameCopyWith<ProjectName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectNameCopyWith<$Res> {
  factory $ProjectNameCopyWith(
          ProjectName value, $Res Function(ProjectName) then) =
      _$ProjectNameCopyWithImpl<$Res>;
  $Res call({String id, String name, String url});
}

/// @nodoc
class _$ProjectNameCopyWithImpl<$Res> implements $ProjectNameCopyWith<$Res> {
  _$ProjectNameCopyWithImpl(this._value, this._then);

  final ProjectName _value;
  // ignore: unused_field
  final $Res Function(ProjectName) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectNameCopyWith<$Res>
    implements $ProjectNameCopyWith<$Res> {
  factory _$$_ProjectNameCopyWith(
          _$_ProjectName value, $Res Function(_$_ProjectName) then) =
      __$$_ProjectNameCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String url});
}

/// @nodoc
class __$$_ProjectNameCopyWithImpl<$Res> extends _$ProjectNameCopyWithImpl<$Res>
    implements _$$_ProjectNameCopyWith<$Res> {
  __$$_ProjectNameCopyWithImpl(
      _$_ProjectName _value, $Res Function(_$_ProjectName) _then)
      : super(_value, (v) => _then(v as _$_ProjectName));

  @override
  _$_ProjectName get _value => super._value as _$_ProjectName;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ProjectName(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectName implements _ProjectName {
  const _$_ProjectName(
      {required this.id, required this.name, required this.url});

  factory _$_ProjectName.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectNameFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ProjectName(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectName &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectNameCopyWith<_$_ProjectName> get copyWith =>
      __$$_ProjectNameCopyWithImpl<_$_ProjectName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectNameToJson(this);
  }
}

abstract class _ProjectName implements ProjectName {
  const factory _ProjectName(
      {required final String id,
      required final String name,
      required final String url}) = _$_ProjectName;

  factory _ProjectName.fromJson(Map<String, dynamic> json) =
      _$_ProjectName.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectNameCopyWith<_$_ProjectName> get copyWith =>
      throw _privateConstructorUsedError;
}
