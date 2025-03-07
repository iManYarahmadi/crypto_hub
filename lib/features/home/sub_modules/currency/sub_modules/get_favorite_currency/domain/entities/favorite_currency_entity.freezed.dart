// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoriteCurrencyEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get cryptocurrencyId => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteCurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteCurrencyEntityCopyWith<FavoriteCurrencyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCurrencyEntityCopyWith<$Res> {
  factory $FavoriteCurrencyEntityCopyWith(
    FavoriteCurrencyEntity value,
    $Res Function(FavoriteCurrencyEntity) then,
  ) = _$FavoriteCurrencyEntityCopyWithImpl<$Res, FavoriteCurrencyEntity>;
  @useResult
  $Res call({int id, int userId, int cryptocurrencyId});
}

/// @nodoc
class _$FavoriteCurrencyEntityCopyWithImpl<
  $Res,
  $Val extends FavoriteCurrencyEntity
>
    implements $FavoriteCurrencyEntityCopyWith<$Res> {
  _$FavoriteCurrencyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteCurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? cryptocurrencyId = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            cryptocurrencyId:
                null == cryptocurrencyId
                    ? _value.cryptocurrencyId
                    : cryptocurrencyId // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FavoriteCurrencyEntityImplCopyWith<$Res>
    implements $FavoriteCurrencyEntityCopyWith<$Res> {
  factory _$$FavoriteCurrencyEntityImplCopyWith(
    _$FavoriteCurrencyEntityImpl value,
    $Res Function(_$FavoriteCurrencyEntityImpl) then,
  ) = __$$FavoriteCurrencyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, int cryptocurrencyId});
}

/// @nodoc
class __$$FavoriteCurrencyEntityImplCopyWithImpl<$Res>
    extends
        _$FavoriteCurrencyEntityCopyWithImpl<$Res, _$FavoriteCurrencyEntityImpl>
    implements _$$FavoriteCurrencyEntityImplCopyWith<$Res> {
  __$$FavoriteCurrencyEntityImplCopyWithImpl(
    _$FavoriteCurrencyEntityImpl _value,
    $Res Function(_$FavoriteCurrencyEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteCurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? cryptocurrencyId = null,
  }) {
    return _then(
      _$FavoriteCurrencyEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        cryptocurrencyId:
            null == cryptocurrencyId
                ? _value.cryptocurrencyId
                : cryptocurrencyId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$FavoriteCurrencyEntityImpl implements _FavoriteCurrencyEntity {
  const _$FavoriteCurrencyEntityImpl({
    required this.id,
    required this.userId,
    required this.cryptocurrencyId,
  });

  @override
  final int id;
  @override
  final int userId;
  @override
  final int cryptocurrencyId;

  @override
  String toString() {
    return 'FavoriteCurrencyEntity(id: $id, userId: $userId, cryptocurrencyId: $cryptocurrencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCurrencyEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cryptocurrencyId, cryptocurrencyId) ||
                other.cryptocurrencyId == cryptocurrencyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, cryptocurrencyId);

  /// Create a copy of FavoriteCurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteCurrencyEntityImplCopyWith<_$FavoriteCurrencyEntityImpl>
  get copyWith =>
      __$$FavoriteCurrencyEntityImplCopyWithImpl<_$FavoriteCurrencyEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _FavoriteCurrencyEntity implements FavoriteCurrencyEntity {
  const factory _FavoriteCurrencyEntity({
    required final int id,
    required final int userId,
    required final int cryptocurrencyId,
  }) = _$FavoriteCurrencyEntityImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get cryptocurrencyId;

  /// Create a copy of FavoriteCurrencyEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteCurrencyEntityImplCopyWith<_$FavoriteCurrencyEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
