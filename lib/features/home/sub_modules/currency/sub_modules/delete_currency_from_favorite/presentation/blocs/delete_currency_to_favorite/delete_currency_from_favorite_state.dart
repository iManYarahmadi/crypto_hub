import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/entities/delete_currency_from_favorite_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_currency_from_favorite_state.freezed.dart';

@freezed
class DeleteCurrencyFromFavoriteState with _$DeleteCurrencyFromFavoriteState {
  const factory DeleteCurrencyFromFavoriteState.initial() = _Initial;
  const factory DeleteCurrencyFromFavoriteState.loading() = _Loading;
  const factory DeleteCurrencyFromFavoriteState.success(
    DeleteCurrencyFromFavoriteEntity entity,
  ) = _Success;
  const factory DeleteCurrencyFromFavoriteState.error(String message) = _Error;
}
