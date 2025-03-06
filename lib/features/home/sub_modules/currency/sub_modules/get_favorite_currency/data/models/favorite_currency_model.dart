import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_currency_model.freezed.dart';
part 'favorite_currency_model.g.dart';

@freezed
class FavoriteCurrencyModel with _$FavoriteCurrencyModel {
  const factory FavoriteCurrencyModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') @Default(0) int createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'user_id') @Default(0) int userId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'cryptocurrency_id') @Default(0) int cryptocurrencyId,
  }) = _FavoriteCurrencyModel;

  factory FavoriteCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteCurrencyModelFromJson(json);
}

