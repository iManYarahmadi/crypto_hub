import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.freezed.dart';

@freezed
class CurrencyEntity with _$CurrencyEntity {
  const factory CurrencyEntity({
    required int id,
    required String name,
    required double price,
    required String symbol,
    required String iconAddress,
    @Default(false) bool isFavorite,
  }) = _CurrencyEntity;
}
