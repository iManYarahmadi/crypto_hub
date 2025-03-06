import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_currency_entity.freezed.dart';

@freezed
class FavoriteCurrencyEntity with _$FavoriteCurrencyEntity {
  const factory FavoriteCurrencyEntity({
    required int id,
    required int userId,
    required int cryptocurrencyId,
  }) = _FavoriteCurrencyEntity;
}