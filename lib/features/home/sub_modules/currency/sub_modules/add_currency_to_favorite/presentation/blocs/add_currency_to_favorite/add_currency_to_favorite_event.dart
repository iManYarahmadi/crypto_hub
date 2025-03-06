import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/params/add_currency_to_favorite_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_currency_to_favorite_event.freezed.dart';

@freezed
class AddCurrencyToFavoriteEvent with _$AddCurrencyToFavoriteEvent {
  const factory AddCurrencyToFavoriteEvent.addCurrencyToFavorite(AddCurrencyToFavoriteParams params) =
  _AddCurrencyToFavorite;
}