import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_state.freezed.dart';

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.initial() = _Initial;
  const factory CurrencyState.loading() = _Loading;
  const factory CurrencyState.loaded(List<CurrencyEntity> currencies) = _Loaded;
  const factory CurrencyState.error(String message) = _Error;
}
