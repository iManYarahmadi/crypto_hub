import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/models/favorite_currency_model.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';

class FavoriteCurrencyMapper {
  static FavoriteCurrencyEntity toEntity(FavoriteCurrencyModel model) {
    return FavoriteCurrencyEntity(
      id: model.id,
      userId: model.userId,
      cryptocurrencyId: model.cryptocurrencyId,
    );
  }

  static List<FavoriteCurrencyEntity> toEntityList(
    List<FavoriteCurrencyModel> models,
  ) {
    return models.map((model) => toEntity(model)).toList();
  }
}
