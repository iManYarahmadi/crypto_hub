import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_currency_from_favorite_model.freezed.dart';
part 'delete_currency_from_favorite_model.g.dart';

@freezed
class DeleteCurrencyFromFavoriteModel with _$DeleteCurrencyFromFavoriteModel {
  const factory DeleteCurrencyFromFavoriteModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'code') @Default('') String code,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') @Default('') String message,
  }) = _DeleteCurrencyFromFavoriteModel;

  factory DeleteCurrencyFromFavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteCurrencyFromFavoriteModelFromJson(json);
}
