// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
mixin _$CurrencyModel {
  // ignore: invalid_annotation_target
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  int get createdAt => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'symbol')
  String get symbol => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'icon_address')
  String get iconAddress => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'is_favorite')
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this CurrencyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
    CurrencyModel value,
    $Res Function(CurrencyModel) then,
  ) = _$CurrencyModelCopyWithImpl<$Res, CurrencyModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'symbol') String symbol,
    @JsonKey(name: 'icon_address') String iconAddress,
    @JsonKey(name: 'is_favorite') bool isFavorite,
  });
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res, $Val extends CurrencyModel>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? price = null,
    Object? symbol = null,
    Object? iconAddress = null,
    Object? isFavorite = null,
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
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            symbol:
                null == symbol
                    ? _value.symbol
                    : symbol // ignore: cast_nullable_to_non_nullable
                        as String,
            iconAddress:
                null == iconAddress
                    ? _value.iconAddress
                    : iconAddress // ignore: cast_nullable_to_non_nullable
                        as String,
            isFavorite:
                null == isFavorite
                    ? _value.isFavorite
                    : isFavorite // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CurrencyModelImplCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$$CurrencyModelImplCopyWith(
    _$CurrencyModelImpl value,
    $Res Function(_$CurrencyModelImpl) then,
  ) = __$$CurrencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'created_at') int createdAt,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'symbol') String symbol,
    @JsonKey(name: 'icon_address') String iconAddress,
    @JsonKey(name: 'is_favorite') bool isFavorite,
  });
}

/// @nodoc
class __$$CurrencyModelImplCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res, _$CurrencyModelImpl>
    implements _$$CurrencyModelImplCopyWith<$Res> {
  __$$CurrencyModelImplCopyWithImpl(
    _$CurrencyModelImpl _value,
    $Res Function(_$CurrencyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? price = null,
    Object? symbol = null,
    Object? iconAddress = null,
    Object? isFavorite = null,
  }) {
    return _then(
      _$CurrencyModelImpl(
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
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        symbol:
            null == symbol
                ? _value.symbol
                : symbol // ignore: cast_nullable_to_non_nullable
                    as String,
        iconAddress:
            null == iconAddress
                ? _value.iconAddress
                : iconAddress // ignore: cast_nullable_to_non_nullable
                    as String,
        isFavorite:
            null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyModelImpl implements _CurrencyModel {
  const _$CurrencyModelImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'created_at') this.createdAt = 0,
    @JsonKey(name: 'name') this.name = '',
    @JsonKey(name: 'price') this.price = 0.0,
    @JsonKey(name: 'symbol') this.symbol = '',
    @JsonKey(name: 'icon_address') this.iconAddress = '',
    @JsonKey(name: 'is_favorite') this.isFavorite = false,
  });

  factory _$CurrencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyModelImplFromJson(json);

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
  @JsonKey(name: 'name')
  final String name;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'price')
  final double price;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'symbol')
  final String symbol;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'icon_address')
  final String iconAddress;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'is_favorite')
  final bool isFavorite;

  @override
  String toString() {
    return 'CurrencyModel(id: $id, createdAt: $createdAt, name: $name, price: $price, symbol: $symbol, iconAddress: $iconAddress, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.iconAddress, iconAddress) ||
                other.iconAddress == iconAddress) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createdAt,
    name,
    price,
    symbol,
    iconAddress,
    isFavorite,
  );

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyModelImplCopyWith<_$CurrencyModelImpl> get copyWith =>
      __$$CurrencyModelImplCopyWithImpl<_$CurrencyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyModelImplToJson(this);
  }
}

abstract class _CurrencyModel implements CurrencyModel {
  const factory _CurrencyModel({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'created_at') final int createdAt,
    @JsonKey(name: 'name') final String name,
    @JsonKey(name: 'price') final double price,
    @JsonKey(name: 'symbol') final String symbol,
    @JsonKey(name: 'icon_address') final String iconAddress,
    @JsonKey(name: 'is_favorite') final bool isFavorite,
  }) = _$CurrencyModelImpl;

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$CurrencyModelImpl.fromJson;

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'id')
  int get id; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'created_at')
  int get createdAt; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'name')
  String get name; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'price')
  double get price; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'symbol')
  String get symbol; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'icon_address')
  String get iconAddress; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'is_favorite')
  bool get isFavorite;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrencyModelImplCopyWith<_$CurrencyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
