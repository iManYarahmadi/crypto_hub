import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/params/add_currency_to_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/entities/add_currency_to_favorite_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AddCurrencyToFavoriteRepository {
  Future<Either<Failure, AddCurrencyToFavoriteEntity>> addCurrencyToFavorite(
    AddCurrencyToFavoriteParams params,
  );
}
