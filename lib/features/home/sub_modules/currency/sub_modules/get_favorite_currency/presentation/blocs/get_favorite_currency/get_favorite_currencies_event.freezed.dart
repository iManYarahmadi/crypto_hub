// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorite_currencies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetFavoriteCurrenciesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavoriteCurrencies,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavoriteCurrencies,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavoriteCurrencies,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavoriteCurrencies value)
    fetchFavoriteCurrencies,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavoriteCurrencies value)? fetchFavoriteCurrencies,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavoriteCurrencies value)? fetchFavoriteCurrencies,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoriteCurrenciesEventCopyWith<$Res> {
  factory $GetFavoriteCurrenciesEventCopyWith(
    GetFavoriteCurrenciesEvent value,
    $Res Function(GetFavoriteCurrenciesEvent) then,
  ) =
      _$GetFavoriteCurrenciesEventCopyWithImpl<
        $Res,
        GetFavoriteCurrenciesEvent
      >;
}

/// @nodoc
class _$GetFavoriteCurrenciesEventCopyWithImpl<
  $Res,
  $Val extends GetFavoriteCurrenciesEvent
>
    implements $GetFavoriteCurrenciesEventCopyWith<$Res> {
  _$GetFavoriteCurrenciesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFavoriteCurrenciesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchFavoriteCurrenciesImplCopyWith<$Res> {
  factory _$$FetchFavoriteCurrenciesImplCopyWith(
    _$FetchFavoriteCurrenciesImpl value,
    $Res Function(_$FetchFavoriteCurrenciesImpl) then,
  ) = __$$FetchFavoriteCurrenciesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavoriteCurrenciesImplCopyWithImpl<$Res>
    extends
        _$GetFavoriteCurrenciesEventCopyWithImpl<
          $Res,
          _$FetchFavoriteCurrenciesImpl
        >
    implements _$$FetchFavoriteCurrenciesImplCopyWith<$Res> {
  __$$FetchFavoriteCurrenciesImplCopyWithImpl(
    _$FetchFavoriteCurrenciesImpl _value,
    $Res Function(_$FetchFavoriteCurrenciesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFavoriteCurrenciesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFavoriteCurrenciesImpl implements _FetchFavoriteCurrencies {
  const _$FetchFavoriteCurrenciesImpl();

  @override
  String toString() {
    return 'GetFavoriteCurrenciesEvent.fetchFavoriteCurrencies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFavoriteCurrenciesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavoriteCurrencies,
  }) {
    return fetchFavoriteCurrencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavoriteCurrencies,
  }) {
    return fetchFavoriteCurrencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavoriteCurrencies,
    required TResult orElse(),
  }) {
    if (fetchFavoriteCurrencies != null) {
      return fetchFavoriteCurrencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavoriteCurrencies value)
    fetchFavoriteCurrencies,
  }) {
    return fetchFavoriteCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavoriteCurrencies value)? fetchFavoriteCurrencies,
  }) {
    return fetchFavoriteCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavoriteCurrencies value)? fetchFavoriteCurrencies,
    required TResult orElse(),
  }) {
    if (fetchFavoriteCurrencies != null) {
      return fetchFavoriteCurrencies(this);
    }
    return orElse();
  }
}

abstract class _FetchFavoriteCurrencies implements GetFavoriteCurrenciesEvent {
  const factory _FetchFavoriteCurrencies() = _$FetchFavoriteCurrenciesImpl;
}
