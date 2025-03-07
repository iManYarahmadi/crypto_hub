// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_phone_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateUserPhoneParams {
  // ignore: invalid_annotation_target
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserPhoneParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserPhoneParamsCopyWith<UpdateUserPhoneParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserPhoneParamsCopyWith<$Res> {
  factory $UpdateUserPhoneParamsCopyWith(
    UpdateUserPhoneParams value,
    $Res Function(UpdateUserPhoneParams) then,
  ) = _$UpdateUserPhoneParamsCopyWithImpl<$Res, UpdateUserPhoneParams>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class _$UpdateUserPhoneParamsCopyWithImpl<
  $Res,
  $Val extends UpdateUserPhoneParams
>
    implements $UpdateUserPhoneParamsCopyWith<$Res> {
  _$UpdateUserPhoneParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserPhoneParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null}) {
    return _then(
      _value.copyWith(
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
abstract class _$$UpdateUserPhoneParamsImplCopyWith<$Res>
    implements $UpdateUserPhoneParamsCopyWith<$Res> {
  factory _$$UpdateUserPhoneParamsImplCopyWith(
    _$UpdateUserPhoneParamsImpl value,
    $Res Function(_$UpdateUserPhoneParamsImpl) then,
  ) = __$$UpdateUserPhoneParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$UpdateUserPhoneParamsImplCopyWithImpl<$Res>
    extends
        _$UpdateUserPhoneParamsCopyWithImpl<$Res, _$UpdateUserPhoneParamsImpl>
    implements _$$UpdateUserPhoneParamsImplCopyWith<$Res> {
  __$$UpdateUserPhoneParamsImplCopyWithImpl(
    _$UpdateUserPhoneParamsImpl _value,
    $Res Function(_$UpdateUserPhoneParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserPhoneParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null}) {
    return _then(
      _$UpdateUserPhoneParamsImpl(
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

class _$UpdateUserPhoneParamsImpl implements _UpdateUserPhoneParams {
  const _$UpdateUserPhoneParamsImpl({required this.phoneNumber});

  // ignore: invalid_annotation_target
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'UpdateUserPhoneParams(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserPhoneParamsImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of UpdateUserPhoneParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserPhoneParamsImplCopyWith<_$UpdateUserPhoneParamsImpl>
  get copyWith =>
      __$$UpdateUserPhoneParamsImplCopyWithImpl<_$UpdateUserPhoneParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateUserPhoneParams implements UpdateUserPhoneParams {
  const factory _UpdateUserPhoneParams({required final String phoneNumber}) =
      _$UpdateUserPhoneParamsImpl;

  // ignore: invalid_annotation_target
  @override
  String get phoneNumber;

  /// Create a copy of UpdateUserPhoneParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserPhoneParamsImplCopyWith<_$UpdateUserPhoneParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
