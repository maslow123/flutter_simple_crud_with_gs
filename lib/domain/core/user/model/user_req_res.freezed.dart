// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_req_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserReqRes _$UserReqResFromJson(Map<String, dynamic> json) {
  return RequestData.fromJson(json);
}

/// @nodoc
class _$UserReqResTearOff {
  const _$UserReqResTearOff();

  RequestData requestData({String? name, String? job}) {
    return RequestData(
      name: name,
      job: job,
    );
  }

  UserReqRes fromJson(Map<String, Object> json) {
    return UserReqRes.fromJson(json);
  }
}

/// @nodoc
const $UserReqRes = _$UserReqResTearOff();

/// @nodoc
mixin _$UserReqRes {
  String? get name => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? job) requestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? job)? requestData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestData value) requestData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestData value)? requestData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReqResCopyWith<UserReqRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReqResCopyWith<$Res> {
  factory $UserReqResCopyWith(
          UserReqRes value, $Res Function(UserReqRes) then) =
      _$UserReqResCopyWithImpl<$Res>;
  $Res call({String? name, String? job});
}

/// @nodoc
class _$UserReqResCopyWithImpl<$Res> implements $UserReqResCopyWith<$Res> {
  _$UserReqResCopyWithImpl(this._value, this._then);

  final UserReqRes _value;
  // ignore: unused_field
  final $Res Function(UserReqRes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $RequestDataCopyWith<$Res> implements $UserReqResCopyWith<$Res> {
  factory $RequestDataCopyWith(
          RequestData value, $Res Function(RequestData) then) =
      _$RequestDataCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? job});
}

/// @nodoc
class _$RequestDataCopyWithImpl<$Res> extends _$UserReqResCopyWithImpl<$Res>
    implements $RequestDataCopyWith<$Res> {
  _$RequestDataCopyWithImpl(
      RequestData _value, $Res Function(RequestData) _then)
      : super(_value, (v) => _then(v as RequestData));

  @override
  RequestData get _value => super._value as RequestData;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
  }) {
    return _then(RequestData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestData implements RequestData {
  const _$RequestData({this.name, this.job});

  factory _$RequestData.fromJson(Map<String, dynamic> json) =>
      _$_$RequestDataFromJson(json);

  @override
  final String? name;
  @override
  final String? job;

  @override
  String toString() {
    return 'UserReqRes.requestData(name: $name, job: $job)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(job);

  @JsonKey(ignore: true)
  @override
  $RequestDataCopyWith<RequestData> get copyWith =>
      _$RequestDataCopyWithImpl<RequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? job) requestData,
  }) {
    return requestData(name, job);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? job)? requestData,
    required TResult orElse(),
  }) {
    if (requestData != null) {
      return requestData(name, job);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestData value) requestData,
  }) {
    return requestData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestData value)? requestData,
    required TResult orElse(),
  }) {
    if (requestData != null) {
      return requestData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RequestDataToJson(this);
  }
}

abstract class RequestData implements UserReqRes {
  const factory RequestData({String? name, String? job}) = _$RequestData;

  factory RequestData.fromJson(Map<String, dynamic> json) =
      _$RequestData.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get job => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RequestDataCopyWith<RequestData> get copyWith =>
      throw _privateConstructorUsedError;
}
