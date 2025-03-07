import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_currency_from_favorite_params.freezed.dart';
part 'delete_currency_from_favorite_params.g.dart';

@freezed
class DeleteCurrencyFromFavoriteParams with _$DeleteCurrencyFromFavoriteParams {
  const factory DeleteCurrencyFromFavoriteParams({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'favorites_id') required int favoritesId,
  }) = _DeleteCurrencyFromFavoriteParams;

  factory DeleteCurrencyFromFavoriteParams.fromJson(
    Map<String, dynamic> json,
  ) => _$DeleteCurrencyFromFavoriteParamsFromJson(json);
}
