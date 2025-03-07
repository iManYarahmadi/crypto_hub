// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteCurrencyModelImpl _$$FavoriteCurrencyModelImplFromJson(
  Map<String, dynamic> json,
) => _$FavoriteCurrencyModelImpl(
  id: (json['id'] as num).toInt(),
  createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
  userId: (json['user_id'] as num?)?.toInt() ?? 0,
  cryptocurrencyId: (json['cryptocurrency_id'] as num).toInt(),
);

Map<String, dynamic> _$$FavoriteCurrencyModelImplToJson(
  _$FavoriteCurrencyModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt,
  'user_id': instance.userId,
  'cryptocurrency_id': instance.cryptocurrencyId,
};
