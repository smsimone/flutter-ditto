// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DittoConfigData {
  String get apiKey => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  bool get forceRefreshOnReload => throw _privateConstructorUsedError;
  @Assert("Uri.tryParse(baseUrl) != null")
  String get baseUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DittoConfigDataCopyWith<DittoConfigData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DittoConfigDataCopyWith<$Res> {
  factory $DittoConfigDataCopyWith(
          DittoConfigData value, $Res Function(DittoConfigData) then) =
      _$DittoConfigDataCopyWithImpl<$Res, DittoConfigData>;
  @useResult
  $Res call(
      {String apiKey,
      String projectId,
      bool forceRefreshOnReload,
      @Assert("Uri.tryParse(baseUrl) != null") String baseUrl});
}

/// @nodoc
class _$DittoConfigDataCopyWithImpl<$Res, $Val extends DittoConfigData>
    implements $DittoConfigDataCopyWith<$Res> {
  _$DittoConfigDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? projectId = null,
    Object? forceRefreshOnReload = null,
    Object? baseUrl = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      forceRefreshOnReload: null == forceRefreshOnReload
          ? _value.forceRefreshOnReload
          : forceRefreshOnReload // ignore: cast_nullable_to_non_nullable
              as bool,
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DittoConfigDataCopyWith<$Res>
    implements $DittoConfigDataCopyWith<$Res> {
  factory _$$_DittoConfigDataCopyWith(
          _$_DittoConfigData value, $Res Function(_$_DittoConfigData) then) =
      __$$_DittoConfigDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey,
      String projectId,
      bool forceRefreshOnReload,
      @Assert("Uri.tryParse(baseUrl) != null") String baseUrl});
}

/// @nodoc
class __$$_DittoConfigDataCopyWithImpl<$Res>
    extends _$DittoConfigDataCopyWithImpl<$Res, _$_DittoConfigData>
    implements _$$_DittoConfigDataCopyWith<$Res> {
  __$$_DittoConfigDataCopyWithImpl(
      _$_DittoConfigData _value, $Res Function(_$_DittoConfigData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? projectId = null,
    Object? forceRefreshOnReload = null,
    Object? baseUrl = null,
  }) {
    return _then(_$_DittoConfigData(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      forceRefreshOnReload: null == forceRefreshOnReload
          ? _value.forceRefreshOnReload
          : forceRefreshOnReload // ignore: cast_nullable_to_non_nullable
              as bool,
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DittoConfigData implements _DittoConfigData {
  _$_DittoConfigData(
      {required this.apiKey,
      required this.projectId,
      this.forceRefreshOnReload = true,
      @Assert("Uri.tryParse(baseUrl) != null")
          this.baseUrl = 'https://api.dittowords.com'});

  @override
  final String apiKey;
  @override
  final String projectId;
  @override
  @JsonKey()
  final bool forceRefreshOnReload;
  @override
  @JsonKey()
  @Assert("Uri.tryParse(baseUrl) != null")
  final String baseUrl;

  @override
  String toString() {
    return 'DittoConfigData(apiKey: $apiKey, projectId: $projectId, forceRefreshOnReload: $forceRefreshOnReload, baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DittoConfigData &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.forceRefreshOnReload, forceRefreshOnReload) ||
                other.forceRefreshOnReload == forceRefreshOnReload) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, apiKey, projectId, forceRefreshOnReload, baseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DittoConfigDataCopyWith<_$_DittoConfigData> get copyWith =>
      __$$_DittoConfigDataCopyWithImpl<_$_DittoConfigData>(this, _$identity);
}

abstract class _DittoConfigData implements DittoConfigData {
  factory _DittoConfigData(
          {required final String apiKey,
          required final String projectId,
          final bool forceRefreshOnReload,
          @Assert("Uri.tryParse(baseUrl) != null") final String baseUrl}) =
      _$_DittoConfigData;

  @override
  String get apiKey;
  @override
  String get projectId;
  @override
  bool get forceRefreshOnReload;
  @override
  @Assert("Uri.tryParse(baseUrl) != null")
  String get baseUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DittoConfigDataCopyWith<_$_DittoConfigData> get copyWith =>
      throw _privateConstructorUsedError;
}
