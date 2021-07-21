// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData2 _$UserData2FromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$UserData2TearOff {
  const _$UserData2TearOff();

  _Data call(
      {String? name,
      String? job,
      String? id,
      @JsonKey(name: 'createdAt') String? createData}) {
    return _Data(
      name: name,
      job: job,
      id: id,
      createData: createData,
    );
  }

  UserData2 fromJson(Map<String, Object> json) {
    return UserData2.fromJson(json);
  }
}

/// @nodoc
const $UserData2 = _$UserData2TearOff();

/// @nodoc
mixin _$UserData2 {
  String? get name => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserData2CopyWith<UserData2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserData2CopyWith<$Res> {
  factory $UserData2CopyWith(UserData2 value, $Res Function(UserData2) then) =
      _$UserData2CopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? job,
      String? id,
      @JsonKey(name: 'createdAt') String? createData});
}

/// @nodoc
class _$UserData2CopyWithImpl<$Res> implements $UserData2CopyWith<$Res> {
  _$UserData2CopyWithImpl(this._value, this._then);

  final UserData2 _value;
  // ignore: unused_field
  final $Res Function(UserData2) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? id = freezed,
    Object? createData = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createData: createData == freezed
          ? _value.createData
          : createData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $UserData2CopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? job,
      String? id,
      @JsonKey(name: 'createdAt') String? createData});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$UserData2CopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? name = freezed,
    Object? job = freezed,
    Object? id = freezed,
    Object? createData = freezed,
  }) {
    return _then(_Data(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      job: job == freezed
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createData: createData == freezed
          ? _value.createData
          : createData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.name,
      this.job,
      this.id,
      @JsonKey(name: 'createdAt') this.createData});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final String? name;
  @override
  final String? job;
  @override
  final String? id;
  @override
  @JsonKey(name: 'createdAt')
  final String? createData;

  @override
  String toString() {
    return 'UserData2(name: $name, job: $job, id: $id, createData: $createData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createData, createData) ||
                const DeepCollectionEquality()
                    .equals(other.createData, createData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createData);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataToJson(this);
  }
}

abstract class _Data implements UserData2 {
  const factory _Data(
      {String? name,
      String? job,
      String? id,
      @JsonKey(name: 'createdAt') String? createData}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get job => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'createdAt')
  String? get createData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
