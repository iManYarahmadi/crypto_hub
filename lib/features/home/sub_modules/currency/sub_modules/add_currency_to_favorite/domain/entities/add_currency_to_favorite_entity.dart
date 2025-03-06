import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_currency_to_favorite_entity.freezed.dart';

@freezed
class AddCurrencyToFavoriteEntity with _$AddCurrencyToFavoriteEntity {
  const factory AddCurrencyToFavoriteEntity({
    required int id,
    required int userId,
    required int cryptocurrencyId,
  }) = _AddCurrencyToFavoriteEntity;
}