// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_currency_from_favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteCurrencyFromFavoriteEntity {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCurrencyFromFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCurrencyFromFavoriteEntityCopyWith<DeleteCurrencyFromFavoriteEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCurrencyFromFavoriteEntityCopyWith<$Res> {
  factory $DeleteCurrencyFromFavoriteEntityCopyWith(
    DeleteCurrencyFromFavoriteEntity value,
    $Res Function(DeleteCurrencyFromFavoriteEntity) then,
  ) =
      _$DeleteCurrencyFromFavoriteEntityCopyWithImpl<
        $Res,
        DeleteCurrencyFromFavoriteEntity
      >;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$DeleteCurrencyFromFavoriteEntityCopyWithImpl<
  $Res,
  $Val extends DeleteCurrencyFromFavoriteEntity
>
    implements $DeleteCurrencyFromFavoriteEntityCopyWith<$Res> {
  _$DeleteCurrencyFromFavoriteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCurrencyFromFavoriteEntity
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
abstract class _$$DeleteCurrencyFromFavoriteEntityImplCopyWith<$Res>
    implements $DeleteCurrencyFromFavoriteEntityCopyWith<$Res> {
  factory _$$DeleteCurrencyFromFavoriteEntityImplCopyWith(
    _$DeleteCurrencyFromFavoriteEntityImpl value,
    $Res Function(_$DeleteCurrencyFromFavoriteEntityImpl) then,
  ) = __$$DeleteCurrencyFromFavoriteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$DeleteCurrencyFromFavoriteEntityImplCopyWithImpl<$Res>
    extends
        _$DeleteCurrencyFromFavoriteEntityCopyWithImpl<
          $Res,
          _$DeleteCurrencyFromFavoriteEntityImpl
        >
    implements _$$DeleteCurrencyFromFavoriteEntityImplCopyWith<$Res> {
  __$$DeleteCurrencyFromFavoriteEntityImplCopyWithImpl(
    _$DeleteCurrencyFromFavoriteEntityImpl _value,
    $Res Function(_$DeleteCurrencyFromFavoriteEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteCurrencyFromFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _$DeleteCurrencyFromFavoriteEntityImpl(
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

class _$DeleteCurrencyFromFavoriteEntityImpl
    implements _DeleteCurrencyFromFavoriteEntity {
  const _$DeleteCurrencyFromFavoriteEntityImpl({
    required this.code,
    required this.message,
  });

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'DeleteCurrencyFromFavoriteEntity(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCurrencyFromFavoriteEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of DeleteCurrencyFromFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCurrencyFromFavoriteEntityImplCopyWith<
    _$DeleteCurrencyFromFavoriteEntityImpl
  >
  get copyWith => __$$DeleteCurrencyFromFavoriteEntityImplCopyWithImpl<
    _$DeleteCurrencyFromFavoriteEntityImpl
  >(this, _$identity);
}

abstract class _DeleteCurrencyFromFavoriteEntity
    implements DeleteCurrencyFromFavoriteEntity {
  const factory _DeleteCurrencyFromFavoriteEntity({
    required final String code,
    required final String message,
  }) = _$DeleteCurrencyFromFavoriteEntityImpl;

  @override
  String get code;
  @override
  String get message;

  /// Create a copy of DeleteCurrencyFromFavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCurrencyFromFavoriteEntityImplCopyWith<
    _$DeleteCurrencyFromFavoriteEntityImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
