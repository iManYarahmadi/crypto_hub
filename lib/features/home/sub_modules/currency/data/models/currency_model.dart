import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') @Default(0) int createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'name') @Default('') String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'price') @Default(0.0) double price,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'symbol') @Default('') String symbol,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'icon_address') @Default('') String iconAddress,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'is_favorite') @Default(false) bool isFavorite,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
