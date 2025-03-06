import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_currency_to_favorite_params.freezed.dart';
part 'add_currency_to_favorite_params.g.dart';

@freezed
class AddCurrencyToFavoriteParams with _$AddCurrencyToFavoriteParams {
  const factory AddCurrencyToFavoriteParams({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'cryptocurrency_id') required int cryptocurrencyId,
  }) = _AddCurrencyToFavoriteParams;

  factory AddCurrencyToFavoriteParams.fromJson(Map<String, dynamic> json) =>
      _$AddCurrencyToFavoriteParamsFromJson(json);
}