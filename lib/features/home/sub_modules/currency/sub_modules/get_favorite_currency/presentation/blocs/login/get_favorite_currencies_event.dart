import 'package:freezed_annotation/freezed_annotation.dart';



part 'get_favorite_currencies_event.freezed.dart';

@freezed
class GetFavoriteCurrenciesEvent with _$GetFavoriteCurrenciesEvent {
  const factory GetFavoriteCurrenciesEvent.fetchFavoriteCurrencies() = _FetchFavoriteCurrencies;
}