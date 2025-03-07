// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_phone_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateUserPhoneEvent {
  UpdateUserPhoneParams get updateUserPhoneParams =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateUserPhoneParams updateUserPhoneParams)
    updatePhone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserPhoneParams updateUserPhoneParams)? updatePhone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateUserPhoneParams updateUserPhoneParams)? updatePhone,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePhone value) updatePhone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePhone value)? updatePhone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePhone value)? updatePhone,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserPhoneEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserPhoneEventCopyWith<UpdateUserPhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserPhoneEventCopyWith<$Res> {
  factory $UpdateUserPhoneEventCopyWith(
    UpdateUserPhoneEvent value,
    $Res Function(UpdateUserPhoneEvent) then,
  ) = _$UpdateUserPhoneEventCopyWithImpl<$Res, UpdateUserPhoneEvent>;
  @useResult
  $Res call({UpdateUserPhoneParams updateUserPhoneParams});

  $UpdateUserPhoneParamsCopyWith<$Res> get updateUserPhoneParams;
}

/// @nodoc
class _$UpdateUserPhoneEventCopyWithImpl<
  $Res,
  $Val extends UpdateUserPhoneEvent
>
    implements $UpdateUserPhoneEventCopyWith<$Res> {
  _$UpdateUserPhoneEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserPhoneEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? updateUserPhoneParams = null}) {
    return _then(
      _value.copyWith(
            updateUserPhoneParams:
                null == updateUserPhoneParams
                    ? _value.updateUserPhoneParams
                    : updateUserPhoneParams // ignore: cast_nullable_to_non_nullable
                        as UpdateUserPhoneParams,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateUserPhoneEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateUserPhoneParamsCopyWith<$Res> get updateUserPhoneParams {
    return $UpdateUserPhoneParamsCopyWith<$Res>(_value.updateUserPhoneParams, (
      value,
    ) {
      return _then(_value.copyWith(updateUserPhoneParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdatePhoneImplCopyWith<$Res>
    implements $UpdateUserPhoneEventCopyWith<$Res> {
  factory _$$UpdatePhoneImplCopyWith(
    _$UpdatePhoneImpl value,
    $Res Function(_$UpdatePhoneImpl) then,
  ) = __$$UpdatePhoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateUserPhoneParams updateUserPhoneParams});

  @override
  $UpdateUserPhoneParamsCopyWith<$Res> get updateUserPhoneParams;
}

/// @nodoc
class __$$UpdatePhoneImplCopyWithImpl<$Res>
    extends _$UpdateUserPhoneEventCopyWithImpl<$Res, _$UpdatePhoneImpl>
    implements _$$UpdatePhoneImplCopyWith<$Res> {
  __$$UpdatePhoneImplCopyWithImpl(
    _$UpdatePhoneImpl _value,
    $Res Function(_$UpdatePhoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateUserPhoneEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? updateUserPhoneParams = null}) {
    return _then(
      _$UpdatePhoneImpl(
        null == updateUserPhoneParams
            ? _value.updateUserPhoneParams
            : updateUserPhoneParams // ignore: cast_nullable_to_non_nullable
                as UpdateUserPhoneParams,
      ),
    );
  }
}

/// @nodoc

class _$UpdatePhoneImpl implements _UpdatePhone {
  const _$UpdatePhoneImpl(this.updateUserPhoneParams);

  @override
  final UpdateUserPhoneParams updateUserPhoneParams;

  @override
  String toString() {
    return 'UpdateUserPhoneEvent.updatePhone(updateUserPhoneParams: $updateUserPhoneParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhoneImpl &&
            (identical(other.updateUserPhoneParams, updateUserPhoneParams) ||
                other.updateUserPhoneParams == updateUserPhoneParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateUserPhoneParams);

  /// Create a copy of UpdateUserPhoneEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePhoneImplCopyWith<_$UpdatePhoneImpl> get copyWith =>
      __$$UpdatePhoneImplCopyWithImpl<_$UpdatePhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateUserPhoneParams updateUserPhoneParams)
    updatePhone,
  }) {
    return updatePhone(updateUserPhoneParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateUserPhoneParams updateUserPhoneParams)? updatePhone,
  }) {
    return updatePhone?.call(updateUserPhoneParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateUserPhoneParams updateUserPhoneParams)? updatePhone,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(updateUserPhoneParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatePhone value) updatePhone,
  }) {
    return updatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdatePhone value)? updatePhone,
  }) {
    return updatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatePhone value)? updatePhone,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhone implements UpdateUserPhoneEvent {
  const factory _UpdatePhone(
    final UpdateUserPhoneParams updateUserPhoneParams,
  ) = _$UpdatePhoneImpl;

  @override
  UpdateUserPhoneParams get updateUserPhoneParams;

  /// Create a copy of UpdateUserPhoneEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePhoneImplCopyWith<_$UpdatePhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
