// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_information_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserInformationEntity {
  int get id => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of UserInformationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInformationEntityCopyWith<UserInformationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInformationEntityCopyWith<$Res> {
  factory $UserInformationEntityCopyWith(
    UserInformationEntity value,
    $Res Function(UserInformationEntity) then,
  ) = _$UserInformationEntityCopyWithImpl<$Res, UserInformationEntity>;
  @useResult
  $Res call({int id, int createdAt, String name, String email});
}

/// @nodoc
class _$UserInformationEntityCopyWithImpl<
  $Res,
  $Val extends UserInformationEntity
>
    implements $UserInformationEntityCopyWith<$Res> {
  _$UserInformationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInformationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? email = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInformationEntityImplCopyWith<$Res>
    implements $UserInformationEntityCopyWith<$Res> {
  factory _$$UserInformationEntityImplCopyWith(
    _$UserInformationEntityImpl value,
    $Res Function(_$UserInformationEntityImpl) then,
  ) = __$$UserInformationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int createdAt, String name, String email});
}

/// @nodoc
class __$$UserInformationEntityImplCopyWithImpl<$Res>
    extends
        _$UserInformationEntityCopyWithImpl<$Res, _$UserInformationEntityImpl>
    implements _$$UserInformationEntityImplCopyWith<$Res> {
  __$$UserInformationEntityImplCopyWithImpl(
    _$UserInformationEntityImpl _value,
    $Res Function(_$UserInformationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInformationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(
      _$UserInformationEntityImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$UserInformationEntityImpl implements _UserInformationEntity {
  const _$UserInformationEntityImpl({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.email,
  });

  @override
  final int id;
  @override
  final int createdAt;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'UserInformationEntity(id: $id, createdAt: $createdAt, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInformationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, name, email);

  /// Create a copy of UserInformationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInformationEntityImplCopyWith<_$UserInformationEntityImpl>
  get copyWith =>
      __$$UserInformationEntityImplCopyWithImpl<_$UserInformationEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _UserInformationEntity implements UserInformationEntity {
  const factory _UserInformationEntity({
    required final int id,
    required final int createdAt,
    required final String name,
    required final String email,
  }) = _$UserInformationEntityImpl;

  @override
  int get id;
  @override
  int get createdAt;
  @override
  String get name;
  @override
  String get email;

  /// Create a copy of UserInformationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInformationEntityImplCopyWith<_$UserInformationEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
