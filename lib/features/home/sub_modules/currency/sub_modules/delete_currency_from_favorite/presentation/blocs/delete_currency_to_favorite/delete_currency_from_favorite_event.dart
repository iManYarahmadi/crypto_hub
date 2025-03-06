import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/params/delete_currency_from_favorite_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_currency_from_favorite_event.freezed.dart';
@freezed
class DeleteCurrencyFromFavoriteEvent with _$DeleteCurrencyFromFavoriteEvent {
  const factory DeleteCurrencyFromFavoriteEvent.deleteCurrencyFromFavorite(
      DeleteCurrencyFromFavoriteParams params) = _DeleteCurrencyFromFavorite;
}