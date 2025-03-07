import 'package:cryptohub/features/home/sub_modules/currency/data/models/currency_model.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';

class CurrencyMapper {
  static CurrencyEntity toEntity(CurrencyModel model) {
    return CurrencyEntity(
      id: model.id,
      name: model.name,
      price: model.price,
      symbol: model.symbol,
      iconAddress: model.iconAddress,
      isFavorite: model.isFavorite,
    );
  }

  static List<CurrencyEntity> toEntityList(List<CurrencyModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }
}
