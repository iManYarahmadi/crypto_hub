import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_favorite_currencies_state.freezed.dart';

@freezed
class GetFavoriteCurrenciesState with _$GetFavoriteCurrenciesState {
  const factory GetFavoriteCurrenciesState.initial() = _Initial;
  const factory GetFavoriteCurrenciesState.loading() = _Loading;
  const factory GetFavoriteCurrenciesState.success(
    List<FavoriteCurrencyEntity> favorites,
  ) = _Success;
  const factory GetFavoriteCurrenciesState.error(String message) = _Error;
}
