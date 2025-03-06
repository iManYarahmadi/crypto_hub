
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/models/delete_currency_from_favorite_model.dart';

import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/entities/delete_currency_from_favorite_entity.dart';

class DeleteCurrencyFromFavoriteMapper {
  static DeleteCurrencyFromFavoriteEntity toEntity(DeleteCurrencyFromFavoriteModel model) {
    return DeleteCurrencyFromFavoriteEntity(
      code: model.code,
      message: model.message,
    );
  }
}