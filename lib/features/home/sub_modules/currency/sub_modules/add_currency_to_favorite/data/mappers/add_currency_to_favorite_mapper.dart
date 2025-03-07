import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/models/add_currency_to_favorite_model.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/entities/add_currency_to_favorite_entity.dart';

class AddCurrencyToFavoriteMapper {
  static AddCurrencyToFavoriteEntity toEntity(
    AddCurrencyToFavoriteModel model,
  ) {
    return AddCurrencyToFavoriteEntity(
      id: model.id,
      userId: model.userId,
      cryptocurrencyId: model.cryptocurrencyId,
    );
  }
}
