// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_names.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectNames _$ProjectNamesFromJson(Map<String, dynamic> json) {
  return _ProjectNames.fromJson(json);
}

/// @nodoc
mixin _$ProjectNames {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectNamesCopyWith<ProjectNames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectNamesCopyWith<$Res> {
  factory $ProjectNamesCopyWith(
          ProjectNames value, $Res Function(ProjectNames) then) =
      _$ProjectNamesCopyWithImpl<$Res>;
  $Res call({String id, String name, String url});
}

/// @nodoc
class _$ProjectNamesCopyWithImpl<$Res> implements $ProjectNamesCopyWith<$Res> {
  _$ProjectNamesCopyWithImpl(this._value, this._then);

  final ProjectNames _value;
  // ignore: unused_field
  final $Res Function(ProjectNames) _then;

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
abstract class _$$_ProjectNamesCopyWith<$Res>
    implements $ProjectNamesCopyWith<$Res> {
  factory _$$_ProjectNamesCopyWith(
          _$_ProjectNames value, $Res Function(_$_ProjectNames) then) =
      __$$_ProjectNamesCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String url});
}

/// @nodoc
class __$$_ProjectNamesCopyWithImpl<$Res>
    extends _$ProjectNamesCopyWithImpl<$Res>
    implements _$$_ProjectNamesCopyWith<$Res> {
  __$$_ProjectNamesCopyWithImpl(
      _$_ProjectNames _value, $Res Function(_$_ProjectNames) _then)
      : super(_value, (v) => _then(v as _$_ProjectNames));

  @override
  _$_ProjectNames get _value => super._value as _$_ProjectNames;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ProjectNames(
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
class _$_ProjectNames implements _ProjectNames {
  const _$_ProjectNames(
      {required this.id, required this.name, required this.url});

  factory _$_ProjectNames.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectNamesFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ProjectNames(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectNames &&
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
  _$$_ProjectNamesCopyWith<_$_ProjectNames> get copyWith =>
      __$$_ProjectNamesCopyWithImpl<_$_ProjectNames>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectNamesToJson(this);
  }
}

abstract class _ProjectNames implements ProjectNames {
  const factory _ProjectNames(
      {required final String id,
      required final String name,
      required final String url}) = _$_ProjectNames;

  factory _ProjectNames.fromJson(Map<String, dynamic> json) =
      _$_ProjectNames.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectNamesCopyWith<_$_ProjectNames> get copyWith =>
      throw _privateConstructorUsedError;
}
