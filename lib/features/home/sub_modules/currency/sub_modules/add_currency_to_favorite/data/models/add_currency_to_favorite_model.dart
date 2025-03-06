import 'package:freezed_annotation/freezed_annotation.dart';


part 'add_currency_to_favorite_model.freezed.dart';
part 'add_currency_to_favorite_model.g.dart';

@freezed
class AddCurrencyToFavoriteModel with _$AddCurrencyToFavoriteModel {
  const factory AddCurrencyToFavoriteModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') @Default(0) int createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_id') @Default(0) int userId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'cryptocurrency_id') @Default(0) int cryptocurrencyId,
  }) = _AddCurrencyToFavoriteModel;

  factory AddCurrencyToFavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$AddCurrencyToFavoriteModelFromJson(json);
}


