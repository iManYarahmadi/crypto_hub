// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      id: (json['id'] as num).toInt(),
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      symbol: json['symbol'] as String? ?? '',
      iconAddress: json['icon_address'] as String? ?? '',
      isFavorite: json['is_favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'name': instance.name,
      'price': instance.price,
      'symbol': instance.symbol,
      'icon_address': instance.iconAddress,
      'is_favorite': instance.isFavorite,
    };
