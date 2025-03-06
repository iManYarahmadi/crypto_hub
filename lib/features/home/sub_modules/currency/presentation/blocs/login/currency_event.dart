import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_event.freezed.dart';

@freezed
class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.fetchCurrencies() = _FetchCurrencies;
}