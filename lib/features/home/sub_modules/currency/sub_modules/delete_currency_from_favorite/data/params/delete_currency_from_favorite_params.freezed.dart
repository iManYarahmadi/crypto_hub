// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_currency_from_favorite_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeleteCurrencyFromFavoriteParams _$DeleteCurrencyFromFavoriteParamsFromJson(
  Map<String, dynamic> json,
) {
  return _DeleteCurrencyFromFavoriteParams.fromJson(json);
}

/// @nodoc
mixin _$DeleteCurrencyFromFavoriteParams {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'favorites_id')
  int get favoritesId => throw _privateConstructorUsedError;

  /// Serializes this DeleteCurrencyFromFavoriteParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCurrencyFromFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCurrencyFromFavoriteParamsCopyWith<DeleteCurrencyFromFavoriteParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCurrencyFromFavoriteParamsCopyWith<$Res> {
  factory $DeleteCurrencyFromFavoriteParamsCopyWith(
    DeleteCurrencyFromFavoriteParams value,
    $Res Function(DeleteCurrencyFromFavoriteParams) then,
  ) =
      _$DeleteCurrencyFromFavoriteParamsCopyWithImpl<
        $Res,
        DeleteCurrencyFromFavoriteParams
      >;
  @useResult
  $Res call({@JsonKey(name: 'favorites_id') int favoritesId});
}

/// @nodoc
class _$DeleteCurrencyFromFavoriteParamsCopyWithImpl<
  $Res,
  $Val extends DeleteCurrencyFromFavoriteParams
>
    implements $DeleteCurrencyFromFavoriteParamsCopyWith<$Res> {
  _$DeleteCurrencyFromFavoriteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCurrencyFromFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? favoritesId = null}) {
    return _then(
      _value.copyWith(
            favoritesId:
                null == favoritesId
                    ? _value.favoritesId
                    : favoritesId // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteCurrencyFromFavoriteParamsImplCopyWith<$Res>
    implements $DeleteCurrencyFromFavoriteParamsCopyWith<$Res> {
  factory _$$DeleteCurrencyFromFavoriteParamsImplCopyWith(
    _$DeleteCurrencyFromFavoriteParamsImpl value,
    $Res Function(_$DeleteCurrencyFromFavoriteParamsImpl) then,
  ) = __$$DeleteCurrencyFromFavoriteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'favorites_id') int favoritesId});
}

/// @nodoc
class __$$DeleteCurrencyFromFavoriteParamsImplCopyWithImpl<$Res>
    extends
        _$DeleteCurrencyFromFavoriteParamsCopyWithImpl<
          $Res,
          _$DeleteCurrencyFromFavoriteParamsImpl
        >
    implements _$$DeleteCurrencyFromFavoriteParamsImplCopyWith<$Res> {
  __$$DeleteCurrencyFromFavoriteParamsImplCopyWithImpl(
    _$DeleteCurrencyFromFavoriteParamsImpl _value,
    $Res Function(_$DeleteCurrencyFromFavoriteParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteCurrencyFromFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? favoritesId = null}) {
    return _then(
      _$DeleteCurrencyFromFavoriteParamsImpl(
        favoritesId:
            null == favoritesId
                ? _value.favoritesId
                : favoritesId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteCurrencyFromFavoriteParamsImpl
    implements _DeleteCurrencyFromFavoriteParams {
  const _$DeleteCurrencyFromFavoriteParamsImpl({
    @JsonKey(name: 'favorites_id') required this.favoritesId,
  });

  factory _$DeleteCurrencyFromFavoriteParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DeleteCurrencyFromFavoriteParamsImplFromJson(json);

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'favorites_id')
  final int favoritesId;

  @override
  String toString() {
    return 'DeleteCurrencyFromFavoriteParams(favoritesId: $favoritesId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCurrencyFromFavoriteParamsImpl &&
            (identical(other.favoritesId, favoritesId) ||
                other.favoritesId == favoritesId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, favoritesId);

  /// Create a copy of DeleteCurrencyFromFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCurrencyFromFavoriteParamsImplCopyWith<
    _$DeleteCurrencyFromFavoriteParamsImpl
  >
  get copyWith => __$$DeleteCurrencyFromFavoriteParamsImplCopyWithImpl<
    _$DeleteCurrencyFromFavoriteParamsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCurrencyFromFavoriteParamsImplToJson(this);
  }
}

abstract class _DeleteCurrencyFromFavoriteParams
    implements DeleteCurrencyFromFavoriteParams {
  const factory _DeleteCurrencyFromFavoriteParams({
    @JsonKey(name: 'favorites_id') required final int favoritesId,
  }) = _$DeleteCurrencyFromFavoriteParamsImpl;

  factory _DeleteCurrencyFromFavoriteParams.fromJson(
    Map<String, dynamic> json,
  ) = _$DeleteCurrencyFromFavoriteParamsImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'favorites_id')
  int get favoritesId;

  /// Create a copy of DeleteCurrencyFromFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCurrencyFromFavoriteParamsImplCopyWith<
    _$DeleteCurrencyFromFavoriteParamsImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
