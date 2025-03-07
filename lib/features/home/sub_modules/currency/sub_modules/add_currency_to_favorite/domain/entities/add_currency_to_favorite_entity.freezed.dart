// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_currency_to_favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddCurrencyToFavoriteEntity {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get cryptocurrencyId => throw _privateConstructorUsedError;

  /// Create a copy of AddCurrencyToFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCurrencyToFavoriteEntityCopyWith<AddCurrencyToFavoriteEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCurrencyToFavoriteEntityCopyWith<$Res> {
  factory $AddCurrencyToFavoriteEntityCopyWith(
    AddCurrencyToFavoriteEntity value,
    $Res Function(AddCurrencyToFavoriteEntity) then,
  ) =
      _$AddCurrencyToFavoriteEntityCopyWithImpl<
        $Res,
        AddCurrencyToFavoriteEntity
      >;
  @useResult
  $Res call({int id, int userId, int cryptocurrencyId});
}

/// @nodoc
class _$AddCurrencyToFavoriteEntityCopyWithImpl<
  $Res,
  $Val extends AddCurrencyToFavoriteEntity
>
    implements $AddCurrencyToFavoriteEntityCopyWith<$Res> {
  _$AddCurrencyToFavoriteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCurrencyToFavoriteEntity
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
abstract class _$$AddCurrencyToFavoriteEntityImplCopyWith<$Res>
    implements $AddCurrencyToFavoriteEntityCopyWith<$Res> {
  factory _$$AddCurrencyToFavoriteEntityImplCopyWith(
    _$AddCurrencyToFavoriteEntityImpl value,
    $Res Function(_$AddCurrencyToFavoriteEntityImpl) then,
  ) = __$$AddCurrencyToFavoriteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, int cryptocurrencyId});
}

/// @nodoc
class __$$AddCurrencyToFavoriteEntityImplCopyWithImpl<$Res>
    extends
        _$AddCurrencyToFavoriteEntityCopyWithImpl<
          $Res,
          _$AddCurrencyToFavoriteEntityImpl
        >
    implements _$$AddCurrencyToFavoriteEntityImplCopyWith<$Res> {
  __$$AddCurrencyToFavoriteEntityImplCopyWithImpl(
    _$AddCurrencyToFavoriteEntityImpl _value,
    $Res Function(_$AddCurrencyToFavoriteEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCurrencyToFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? cryptocurrencyId = null,
  }) {
    return _then(
      _$AddCurrencyToFavoriteEntityImpl(
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

class _$AddCurrencyToFavoriteEntityImpl
    implements _AddCurrencyToFavoriteEntity {
  const _$AddCurrencyToFavoriteEntityImpl({
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
    return 'AddCurrencyToFavoriteEntity(id: $id, userId: $userId, cryptocurrencyId: $cryptocurrencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCurrencyToFavoriteEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cryptocurrencyId, cryptocurrencyId) ||
                other.cryptocurrencyId == cryptocurrencyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, cryptocurrencyId);

  /// Create a copy of AddCurrencyToFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCurrencyToFavoriteEntityImplCopyWith<_$AddCurrencyToFavoriteEntityImpl>
  get copyWith => __$$AddCurrencyToFavoriteEntityImplCopyWithImpl<
    _$AddCurrencyToFavoriteEntityImpl
  >(this, _$identity);
}

abstract class _AddCurrencyToFavoriteEntity
    implements AddCurrencyToFavoriteEntity {
  const factory _AddCurrencyToFavoriteEntity({
    required final int id,
    required final int userId,
    required final int cryptocurrencyId,
  }) = _$AddCurrencyToFavoriteEntityImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get cryptocurrencyId;

  /// Create a copy of AddCurrencyToFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCurrencyToFavoriteEntityImplCopyWith<_$AddCurrencyToFavoriteEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
