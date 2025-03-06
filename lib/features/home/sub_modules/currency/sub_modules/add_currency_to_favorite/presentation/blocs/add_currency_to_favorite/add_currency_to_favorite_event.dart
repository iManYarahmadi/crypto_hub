import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_currency_to_favorite_event.freezed.dart';

@freezed
class AddCurrencyToFavoriteEvent with _$AddCurrencyToFavoriteEvent {
  const factory AddCurrencyToFavoriteEvent.addCurrencyToFavorite(int cryptocurrencyId) =
  _AddCurrencyToFavorite;
}