import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:dartz/dartz.dart';


abstract class GetFavoriteCurrenciesRepository {
  Future<Either<Failure, List<FavoriteCurrencyEntity>>> getFavoriteCurrencies();
}