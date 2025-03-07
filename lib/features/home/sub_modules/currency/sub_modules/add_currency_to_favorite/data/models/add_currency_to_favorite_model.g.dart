// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_currency_to_favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCurrencyToFavoriteModelImpl _$$AddCurrencyToFavoriteModelImplFromJson(
  Map<String, dynamic> json,
) => _$AddCurrencyToFavoriteModelImpl(
  id: (json['id'] as num).toInt(),
  createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
  userId: (json['user_id'] as num?)?.toInt() ?? 0,
  cryptocurrencyId: (json['cryptocurrency_id'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$AddCurrencyToFavoriteModelImplToJson(
  _$AddCurrencyToFavoriteModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt,
  'user_id': instance.userId,
  'cryptocurrency_id': instance.cryptocurrencyId,
};
