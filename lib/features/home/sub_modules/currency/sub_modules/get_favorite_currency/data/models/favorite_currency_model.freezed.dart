// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FavoriteCurrencyModel _$FavoriteCurrencyModelFromJson(
  Map<String, dynamic> json,
) {
  return _FavoriteCurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteCurrencyModel {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'cryptocurrency_id')
  int get cryptocurrencyId => throw _privateConstructorUsedError;

  /// Serializes this FavoriteCurrencyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteCurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteCurrencyModelCopyWith<FavoriteCurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCurrencyModelCopyWith<$Res> {
  factory $FavoriteCurrencyModelCopyWith(
    FavoriteCurrencyModel value,
    $Res Function(FavoriteCurrencyModel) then,
  ) = _$FavoriteCurrencyModelCopyWithImpl<$Res, FavoriteCurrencyModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'cryptocurrency_id') int cryptocurrencyId,
  });
}

/// @nodoc
class _$FavoriteCurrencyModelCopyWithImpl<
  $Res,
  $Val extends FavoriteCurrencyModel
>
    implements $FavoriteCurrencyModelCopyWith<$Res> {
  _$FavoriteCurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteCurrencyModel
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
abstract class _$$FavoriteCurrencyModelImplCopyWith<$Res>
    implements $FavoriteCurrencyModelCopyWith<$Res> {
  factory _$$FavoriteCurrencyModelImplCopyWith(
    _$FavoriteCurrencyModelImpl value,
    $Res Function(_$FavoriteCurrencyModelImpl) then,
  ) = __$$FavoriteCurrencyModelImplCopyWithImpl<$Res>;
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
class __$$FavoriteCurrencyModelImplCopyWithImpl<$Res>
    extends
        _$FavoriteCurrencyModelCopyWithImpl<$Res, _$FavoriteCurrencyModelImpl>
    implements _$$FavoriteCurrencyModelImplCopyWith<$Res> {
  __$$FavoriteCurrencyModelImplCopyWithImpl(
    _$FavoriteCurrencyModelImpl _value,
    $Res Function(_$FavoriteCurrencyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoriteCurrencyModel
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
      _$FavoriteCurrencyModelImpl(
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
class _$FavoriteCurrencyModelImpl implements _FavoriteCurrencyModel {
  const _$FavoriteCurrencyModelImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'created_at') this.createdAt = 0,
    @JsonKey(name: 'user_id') this.userId = 0,
    @JsonKey(name: 'cryptocurrency_id') required this.cryptocurrencyId,
  });

  factory _$FavoriteCurrencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteCurrencyModelImplFromJson(json);

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
    return 'FavoriteCurrencyModel(id: $id, createdAt: $createdAt, userId: $userId, cryptocurrencyId: $cryptocurrencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteCurrencyModelImpl &&
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

  /// Create a copy of FavoriteCurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteCurrencyModelImplCopyWith<_$FavoriteCurrencyModelImpl>
  get copyWith =>
      __$$FavoriteCurrencyModelImplCopyWithImpl<_$FavoriteCurrencyModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteCurrencyModelImplToJson(this);
  }
}

abstract class _FavoriteCurrencyModel implements FavoriteCurrencyModel {
  const factory _FavoriteCurrencyModel({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'created_at') final int createdAt,
    @JsonKey(name: 'user_id') final int userId,
    @JsonKey(name: 'cryptocurrency_id') required final int cryptocurrencyId,
  }) = _$FavoriteCurrencyModelImpl;

  factory _FavoriteCurrencyModel.fromJson(Map<String, dynamic> json) =
      _$FavoriteCurrencyModelImpl.fromJson;

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

  /// Create a copy of FavoriteCurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteCurrencyModelImplCopyWith<_$FavoriteCurrencyModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
