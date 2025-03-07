// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_currency_to_favorite_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddCurrencyToFavoriteParams _$AddCurrencyToFavoriteParamsFromJson(
  Map<String, dynamic> json,
) {
  return _AddCurrencyToFavoriteParams.fromJson(json);
}

/// @nodoc
mixin _$AddCurrencyToFavoriteParams {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'cryptocurrency_id')
  int get cryptocurrencyId => throw _privateConstructorUsedError;

  /// Serializes this AddCurrencyToFavoriteParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCurrencyToFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCurrencyToFavoriteParamsCopyWith<AddCurrencyToFavoriteParams>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCurrencyToFavoriteParamsCopyWith<$Res> {
  factory $AddCurrencyToFavoriteParamsCopyWith(
    AddCurrencyToFavoriteParams value,
    $Res Function(AddCurrencyToFavoriteParams) then,
  ) =
      _$AddCurrencyToFavoriteParamsCopyWithImpl<
        $Res,
        AddCurrencyToFavoriteParams
      >;
  @useResult
  $Res call({@JsonKey(name: 'cryptocurrency_id') int cryptocurrencyId});
}

/// @nodoc
class _$AddCurrencyToFavoriteParamsCopyWithImpl<
  $Res,
  $Val extends AddCurrencyToFavoriteParams
>
    implements $AddCurrencyToFavoriteParamsCopyWith<$Res> {
  _$AddCurrencyToFavoriteParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCurrencyToFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cryptocurrencyId = null}) {
    return _then(
      _value.copyWith(
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
abstract class _$$AddCurrencyToFavoriteParamsImplCopyWith<$Res>
    implements $AddCurrencyToFavoriteParamsCopyWith<$Res> {
  factory _$$AddCurrencyToFavoriteParamsImplCopyWith(
    _$AddCurrencyToFavoriteParamsImpl value,
    $Res Function(_$AddCurrencyToFavoriteParamsImpl) then,
  ) = __$$AddCurrencyToFavoriteParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cryptocurrency_id') int cryptocurrencyId});
}

/// @nodoc
class __$$AddCurrencyToFavoriteParamsImplCopyWithImpl<$Res>
    extends
        _$AddCurrencyToFavoriteParamsCopyWithImpl<
          $Res,
          _$AddCurrencyToFavoriteParamsImpl
        >
    implements _$$AddCurrencyToFavoriteParamsImplCopyWith<$Res> {
  __$$AddCurrencyToFavoriteParamsImplCopyWithImpl(
    _$AddCurrencyToFavoriteParamsImpl _value,
    $Res Function(_$AddCurrencyToFavoriteParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCurrencyToFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cryptocurrencyId = null}) {
    return _then(
      _$AddCurrencyToFavoriteParamsImpl(
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
class _$AddCurrencyToFavoriteParamsImpl
    implements _AddCurrencyToFavoriteParams {
  const _$AddCurrencyToFavoriteParamsImpl({
    @JsonKey(name: 'cryptocurrency_id') required this.cryptocurrencyId,
  });

  factory _$AddCurrencyToFavoriteParamsImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AddCurrencyToFavoriteParamsImplFromJson(json);

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'cryptocurrency_id')
  final int cryptocurrencyId;

  @override
  String toString() {
    return 'AddCurrencyToFavoriteParams(cryptocurrencyId: $cryptocurrencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCurrencyToFavoriteParamsImpl &&
            (identical(other.cryptocurrencyId, cryptocurrencyId) ||
                other.cryptocurrencyId == cryptocurrencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cryptocurrencyId);

  /// Create a copy of AddCurrencyToFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCurrencyToFavoriteParamsImplCopyWith<_$AddCurrencyToFavoriteParamsImpl>
  get copyWith => __$$AddCurrencyToFavoriteParamsImplCopyWithImpl<
    _$AddCurrencyToFavoriteParamsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCurrencyToFavoriteParamsImplToJson(this);
  }
}

abstract class _AddCurrencyToFavoriteParams
    implements AddCurrencyToFavoriteParams {
  const factory _AddCurrencyToFavoriteParams({
    @JsonKey(name: 'cryptocurrency_id') required final int cryptocurrencyId,
  }) = _$AddCurrencyToFavoriteParamsImpl;

  factory _AddCurrencyToFavoriteParams.fromJson(Map<String, dynamic> json) =
      _$AddCurrencyToFavoriteParamsImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'cryptocurrency_id')
  int get cryptocurrencyId;

  /// Create a copy of AddCurrencyToFavoriteParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCurrencyToFavoriteParamsImplCopyWith<_$AddCurrencyToFavoriteParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
