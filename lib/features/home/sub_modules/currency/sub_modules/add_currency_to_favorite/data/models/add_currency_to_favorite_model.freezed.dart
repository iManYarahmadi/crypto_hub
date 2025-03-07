// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_currency_to_favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddCurrencyToFavoriteModel _$AddCurrencyToFavoriteModelFromJson(
  Map<String, dynamic> json,
) {
  return _AddCurrencyToFavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$AddCurrencyToFavoriteModel {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'cryptocurrency_id')
  int get cryptocurrencyId => throw _privateConstructorUsedError;

  /// Serializes this AddCurrencyToFavoriteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCurrencyToFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCurrencyToFavoriteModelCopyWith<AddCurrencyToFavoriteModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCurrencyToFavoriteModelCopyWith<$Res> {
  factory $AddCurrencyToFavoriteModelCopyWith(
    AddCurrencyToFavoriteModel value,
    $Res Function(AddCurrencyToFavoriteModel) then,
  ) =
      _$AddCurrencyToFavoriteModelCopyWithImpl<
        $Res,
        AddCurrencyToFavoriteModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'cryptocurrency_id') int cryptocurrencyId,
  });
}

/// @nodoc
class _$AddCurrencyToFavoriteModelCopyWithImpl<
  $Res,
  $Val extends AddCurrencyToFavoriteModel
>
    implements $AddCurrencyToFavoriteModelCopyWith<$Res> {
  _$AddCurrencyToFavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCurrencyToFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
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
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AddCurrencyToFavoriteModelImplCopyWith<$Res>
    implements $AddCurrencyToFavoriteModelCopyWith<$Res> {
  factory _$$AddCurrencyToFavoriteModelImplCopyWith(
    _$AddCurrencyToFavoriteModelImpl value,
    $Res Function(_$AddCurrencyToFavoriteModelImpl) then,
  ) = __$$AddCurrencyToFavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'cryptocurrency_id') int cryptocurrencyId,
  });
}

/// @nodoc
class __$$AddCurrencyToFavoriteModelImplCopyWithImpl<$Res>
    extends
        _$AddCurrencyToFavoriteModelCopyWithImpl<
          $Res,
          _$AddCurrencyToFavoriteModelImpl
        >
    implements _$$AddCurrencyToFavoriteModelImplCopyWith<$Res> {
  __$$AddCurrencyToFavoriteModelImplCopyWithImpl(
    _$AddCurrencyToFavoriteModelImpl _value,
    $Res Function(_$AddCurrencyToFavoriteModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCurrencyToFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? userId = null,
    Object? cryptocurrencyId = null,
  }) {
    return _then(
      _$AddCurrencyToFavoriteModelImpl(
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
@JsonSerializable()
class _$AddCurrencyToFavoriteModelImpl implements _AddCurrencyToFavoriteModel {
  const _$AddCurrencyToFavoriteModelImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'created_at') this.createdAt = 0,
    @JsonKey(name: 'user_id') this.userId = 0,
    @JsonKey(name: 'cryptocurrency_id') this.cryptocurrencyId = 0,
  });

  factory _$AddCurrencyToFavoriteModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AddCurrencyToFavoriteModelImplFromJson(json);

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
  @JsonKey(name: 'user_id')
  final int userId;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'cryptocurrency_id')
  final int cryptocurrencyId;

  @override
  String toString() {
    return 'AddCurrencyToFavoriteModel(id: $id, createdAt: $createdAt, userId: $userId, cryptocurrencyId: $cryptocurrencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCurrencyToFavoriteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cryptocurrencyId, cryptocurrencyId) ||
                other.cryptocurrencyId == cryptocurrencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, userId, cryptocurrencyId);

  /// Create a copy of AddCurrencyToFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCurrencyToFavoriteModelImplCopyWith<_$AddCurrencyToFavoriteModelImpl>
  get copyWith => __$$AddCurrencyToFavoriteModelImplCopyWithImpl<
    _$AddCurrencyToFavoriteModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCurrencyToFavoriteModelImplToJson(this);
  }
}

abstract class _AddCurrencyToFavoriteModel
    implements AddCurrencyToFavoriteModel {
  const factory _AddCurrencyToFavoriteModel({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'created_at') final int createdAt,
    @JsonKey(name: 'user_id') final int userId,
    @JsonKey(name: 'cryptocurrency_id') final int cryptocurrencyId,
  }) = _$AddCurrencyToFavoriteModelImpl;

  factory _AddCurrencyToFavoriteModel.fromJson(Map<String, dynamic> json) =
      _$AddCurrencyToFavoriteModelImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'id')
  int get id; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'created_at')
  int get createdAt; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'user_id')
  int get userId; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'cryptocurrency_id')
  int get cryptocurrencyId;

  /// Create a copy of AddCurrencyToFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCurrencyToFavoriteModelImplCopyWith<_$AddCurrencyToFavoriteModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
