// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginParamsModel _$LoginParamsModelFromJson(Map<String, dynamic> json) {
  return _LoginParamsModel.fromJson(json);
}

/// @nodoc
mixin _$LoginParamsModel {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginParamsModelCopyWith<LoginParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsModelCopyWith<$Res> {
  factory $LoginParamsModelCopyWith(
    LoginParamsModel value,
    $Res Function(LoginParamsModel) then,
  ) = _$LoginParamsModelCopyWithImpl<$Res, LoginParamsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'password') String password,
  });
}

/// @nodoc
class _$LoginParamsModelCopyWithImpl<$Res, $Val extends LoginParamsModel>
    implements $LoginParamsModelCopyWith<$Res> {
  _$LoginParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _value.copyWith(
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginParamsModelImplCopyWith<$Res>
    implements $LoginParamsModelCopyWith<$Res> {
  factory _$$LoginParamsModelImplCopyWith(
    _$LoginParamsModelImpl value,
    $Res Function(_$LoginParamsModelImpl) then,
  ) = __$$LoginParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'password') String password,
  });
}

/// @nodoc
class __$$LoginParamsModelImplCopyWithImpl<$Res>
    extends _$LoginParamsModelCopyWithImpl<$Res, _$LoginParamsModelImpl>
    implements _$$LoginParamsModelImplCopyWith<$Res> {
  __$$LoginParamsModelImplCopyWithImpl(
    _$LoginParamsModelImpl _value,
    $Res Function(_$LoginParamsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$LoginParamsModelImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParamsModelImpl implements _LoginParamsModel {
  const _$LoginParamsModelImpl({
    @JsonKey(name: 'email') required this.email,
    @JsonKey(name: 'password') required this.password,
  });

  factory _$LoginParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParamsModelImplFromJson(json);

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'email')
  final String email;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'LoginParamsModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsModelImplCopyWith<_$LoginParamsModelImpl> get copyWith =>
      __$$LoginParamsModelImplCopyWithImpl<_$LoginParamsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParamsModelImplToJson(this);
  }
}

abstract class _LoginParamsModel implements LoginParamsModel {
  const factory _LoginParamsModel({
    @JsonKey(name: 'email') required final String email,
    @JsonKey(name: 'password') required final String password,
  }) = _$LoginParamsModelImpl;

  factory _LoginParamsModel.fromJson(Map<String, dynamic> json) =
      _$LoginParamsModelImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'email')
  String get email; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of LoginParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginParamsModelImplCopyWith<_$LoginParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
