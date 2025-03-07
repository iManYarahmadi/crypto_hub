// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_information_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UserInformationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUserInformation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUserInformation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUserInformation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserInformation value) fetchUserInformation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserInformation value)? fetchUserInformation,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserInformation value)? fetchUserInformation,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInformationEventCopyWith<$Res> {
  factory $UserInformationEventCopyWith(
    UserInformationEvent value,
    $Res Function(UserInformationEvent) then,
  ) = _$UserInformationEventCopyWithImpl<$Res, UserInformationEvent>;
}

/// @nodoc
class _$UserInformationEventCopyWithImpl<
  $Res,
  $Val extends UserInformationEvent
>
    implements $UserInformationEventCopyWith<$Res> {
  _$UserInformationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInformationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchUserInformationImplCopyWith<$Res> {
  factory _$$FetchUserInformationImplCopyWith(
    _$FetchUserInformationImpl value,
    $Res Function(_$FetchUserInformationImpl) then,
  ) = __$$FetchUserInformationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserInformationImplCopyWithImpl<$Res>
    extends _$UserInformationEventCopyWithImpl<$Res, _$FetchUserInformationImpl>
    implements _$$FetchUserInformationImplCopyWith<$Res> {
  __$$FetchUserInformationImplCopyWithImpl(
    _$FetchUserInformationImpl _value,
    $Res Function(_$FetchUserInformationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInformationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchUserInformationImpl implements _FetchUserInformation {
  const _$FetchUserInformationImpl();

  @override
  String toString() {
    return 'UserInformationEvent.fetchUserInformation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserInformationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUserInformation,
  }) {
    return fetchUserInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUserInformation,
  }) {
    return fetchUserInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUserInformation,
    required TResult orElse(),
  }) {
    if (fetchUserInformation != null) {
      return fetchUserInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserInformation value) fetchUserInformation,
  }) {
    return fetchUserInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserInformation value)? fetchUserInformation,
  }) {
    return fetchUserInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserInformation value)? fetchUserInformation,
    required TResult orElse(),
  }) {
    if (fetchUserInformation != null) {
      return fetchUserInformation(this);
    }
    return orElse();
  }
}

abstract class _FetchUserInformation implements UserInformationEvent {
  const factory _FetchUserInformation() = _$FetchUserInformationImpl;
}
