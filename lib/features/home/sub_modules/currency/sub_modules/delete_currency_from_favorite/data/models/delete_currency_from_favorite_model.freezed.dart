// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_currency_from_favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeleteCurrencyFromFavoriteModel _$DeleteCurrencyFromFavoriteModelFromJson(
  Map<String, dynamic> json,
) {
  return _DeleteCurrencyFromFavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteCurrencyFromFavoriteModel {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteCurrencyFromFavoriteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCurrencyFromFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCurrencyFromFavoriteModelCopyWith<DeleteCurrencyFromFavoriteModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCurrencyFromFavoriteModelCopyWith<$Res> {
  factory $DeleteCurrencyFromFavoriteModelCopyWith(
    DeleteCurrencyFromFavoriteModel value,
    $Res Function(DeleteCurrencyFromFavoriteModel) then,
  ) =
      _$DeleteCurrencyFromFavoriteModelCopyWithImpl<
        $Res,
        DeleteCurrencyFromFavoriteModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'code') String code,
    @JsonKey(name: 'message') String message,
  });
}

/// @nodoc
class _$DeleteCurrencyFromFavoriteModelCopyWithImpl<
  $Res,
  $Val extends DeleteCurrencyFromFavoriteModel
>
    implements $DeleteCurrencyFromFavoriteModelCopyWith<$Res> {
  _$DeleteCurrencyFromFavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCurrencyFromFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteCurrencyFromFavoriteModelImplCopyWith<$Res>
    implements $DeleteCurrencyFromFavoriteModelCopyWith<$Res> {
  factory _$$DeleteCurrencyFromFavoriteModelImplCopyWith(
    _$DeleteCurrencyFromFavoriteModelImpl value,
    $Res Function(_$DeleteCurrencyFromFavoriteModelImpl) then,
  ) = __$$DeleteCurrencyFromFavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'code') String code,
    @JsonKey(name: 'message') String message,
  });
}

/// @nodoc
class __$$DeleteCurrencyFromFavoriteModelImplCopyWithImpl<$Res>
    extends
        _$DeleteCurrencyFromFavoriteModelCopyWithImpl<
          $Res,
          _$DeleteCurrencyFromFavoriteModelImpl
        >
    implements _$$DeleteCurrencyFromFavoriteModelImplCopyWith<$Res> {
  __$$DeleteCurrencyFromFavoriteModelImplCopyWithImpl(
    _$DeleteCurrencyFromFavoriteModelImpl _value,
    $Res Function(_$DeleteCurrencyFromFavoriteModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteCurrencyFromFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _$DeleteCurrencyFromFavoriteModelImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteCurrencyFromFavoriteModelImpl
    implements _DeleteCurrencyFromFavoriteModel {
  const _$DeleteCurrencyFromFavoriteModelImpl({
    @JsonKey(name: 'code') this.code = '',
    @JsonKey(name: 'message') this.message = '',
  });

  factory _$DeleteCurrencyFromFavoriteModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DeleteCurrencyFromFavoriteModelImplFromJson(json);

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'code')
  final String code;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'DeleteCurrencyFromFavoriteModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCurrencyFromFavoriteModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of DeleteCurrencyFromFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCurrencyFromFavoriteModelImplCopyWith<
    _$DeleteCurrencyFromFavoriteModelImpl
  >
  get copyWith => __$$DeleteCurrencyFromFavoriteModelImplCopyWithImpl<
    _$DeleteCurrencyFromFavoriteModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCurrencyFromFavoriteModelImplToJson(this);
  }
}

abstract class _DeleteCurrencyFromFavoriteModel
    implements DeleteCurrencyFromFavoriteModel {
  const factory _DeleteCurrencyFromFavoriteModel({
    @JsonKey(name: 'code') final String code,
    @JsonKey(name: 'message') final String message,
  }) = _$DeleteCurrencyFromFavoriteModelImpl;

  factory _DeleteCurrencyFromFavoriteModel.fromJson(Map<String, dynamic> json) =
      _$DeleteCurrencyFromFavoriteModelImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'code')
  String get code; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of DeleteCurrencyFromFavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCurrencyFromFavoriteModelImplCopyWith<
    _$DeleteCurrencyFromFavoriteModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
