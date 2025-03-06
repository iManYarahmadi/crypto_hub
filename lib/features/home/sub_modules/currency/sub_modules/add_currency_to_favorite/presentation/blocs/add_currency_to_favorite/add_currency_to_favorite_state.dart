import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/entities/add_currency_to_favorite_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_currency_to_favorite_state.freezed.dart';

@freezed
class AddCurrencyToFavoriteState with _$AddCurrencyToFavoriteState {
  const factory AddCurrencyToFavoriteState.initial() = _Initial;
  const factory AddCurrencyToFavoriteState.loading() = _Loading;
  const factory AddCurrencyToFavoriteState.success(AddCurrencyToFavoriteEntity favorite) = _Success;
  const factory AddCurrencyToFavoriteState.error(String message) = _Error;
}