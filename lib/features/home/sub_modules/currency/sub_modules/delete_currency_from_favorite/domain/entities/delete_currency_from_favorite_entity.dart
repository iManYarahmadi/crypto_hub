import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_currency_from_favorite_entity.freezed.dart';

@freezed
class DeleteCurrencyFromFavoriteEntity with _$DeleteCurrencyFromFavoriteEntity {
  const factory DeleteCurrencyFromFavoriteEntity({
    required String code,
    required String message,
  }) = _DeleteCurrencyFromFavoriteEntity;
}