import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/params/delete_currency_from_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/entities/delete_currency_from_favorite_entity.dart' show DeleteCurrencyFromFavoriteEntity;
import 'package:dartz/dartz.dart';

abstract class DeleteCurrencyFromFavoriteRepository {
  Future<Either<Failure, DeleteCurrencyFromFavoriteEntity>> deleteCurrencyFromFavorite(
      DeleteCurrencyFromFavoriteParams params);
}