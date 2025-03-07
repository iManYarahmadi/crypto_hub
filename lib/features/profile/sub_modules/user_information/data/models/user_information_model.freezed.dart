// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserInformationModel _$UserInformationModelFromJson(Map<String, dynamic> json) {
  return _UserInformationModel.fromJson(json);
}

/// @nodoc
mixin _$UserInformationModel {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this UserInformationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInformationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInformationModelCopyWith<UserInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInformationModelCopyWith<$Res> {
  factory $UserInformationModelCopyWith(
    UserInformationModel value,
    $Res Function(UserInformationModel) then,
  ) = _$UserInformationModelCopyWithImpl<$Res, UserInformationModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'phone_number') String phoneNumber,
  });
}

/// @nodoc
class _$UserInformationModelCopyWithImpl<
  $Res,
  $Val extends UserInformationModel
>
    implements $UserInformationModelCopyWith<$Res> {
  _$UserInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInformationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            phoneNumber:
                null == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInformationModelImplCopyWith<$Res>
    implements $UserInformationModelCopyWith<$Res> {
  factory _$$UserInformationModelImplCopyWith(
    _$UserInformationModelImpl value,
    $Res Function(_$UserInformationModelImpl) then,
  ) = __$$UserInformationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'phone_number') String phoneNumber,
  });
}

/// @nodoc
class __$$UserInformationModelImplCopyWithImpl<$Res>
    extends _$UserInformationModelCopyWithImpl<$Res, _$UserInformationModelImpl>
    implements _$$UserInformationModelImplCopyWith<$Res> {
  __$$UserInformationModelImplCopyWithImpl(
    _$UserInformationModelImpl _value,
    $Res Function(_$UserInformationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInformationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      _$UserInformationModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        phoneNumber:
            null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInformationModelImpl implements _UserInformationModel {
  const _$UserInformationModelImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'created_at') this.createdAt = 0,
    @JsonKey(name: 'name') this.name = "",
    @JsonKey(name: 'email') this.email = "",
    @JsonKey(name: 'phone_number') this.phoneNumber = "",
  });

  factory _$UserInformationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInformationModelImplFromJson(json);

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'id')
  final int id;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'created_at')
  final int createdAt;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'name')
  final String name;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'email')
  final String email;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'UserInformationModel(id: $id, createdAt: $createdAt, name: $name, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInformationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, name, email, phoneNumber);

  /// Create a copy of UserInformationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInformationModelImplCopyWith<_$UserInformationModelImpl>
  get copyWith =>
      __$$UserInformationModelImplCopyWithImpl<_$UserInformationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInformationModelImplToJson(this);
  }
}

abstract class _UserInformationModel implements UserInformationModel {
  const factory _UserInformationModel({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'created_at') final int createdAt,
    @JsonKey(name: 'name') final String name,
    @JsonKey(name: 'email') final String email,
    @JsonKey(name: 'phone_number') final String phoneNumber,
  }) = _$UserInformationModelImpl;

  factory _UserInformationModel.fromJson(Map<String, dynamic> json) =
      _$UserInformationModelImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'id')
  int get id; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'created_at')
  int get createdAt; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'name')
  String get name; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'email')
  String get email; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  /// Create a copy of UserInformationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInformationModelImplCopyWith<_$UserInformationModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
