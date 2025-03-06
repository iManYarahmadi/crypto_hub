import 'dart:developer' as developer show log;
import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/datasources/get_favorite_currencies_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/mappers/favorite_currency_mapper.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/repositories/get_favorite_currencies_repository.dart';
import 'package:dartz/dartz.dart';
import 'dart:developer' as developer;

class GetFavoriteCurrenciesRepositoryImpl implements GetFavoriteCurrenciesRepository {
  final GetFavoriteCurrenciesRemoteDataSource remoteDataSource;

  GetFavoriteCurrenciesRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<FavoriteCurrencyEntity>>> getFavoriteCurrencies() async {
    try {
      final models = await remoteDataSource.getFavoriteCurrencies();
      return Right(FavoriteCurrencyMapper.toEntityList(models));
    } catch (e, stackTrace) {
      developer.log(
        'Get favorite currencies failed: $e',
        name: 'GetFavoriteCurrenciesRepository',
        error: e,
        stackTrace: stackTrace,
      );
      return Left(ServerFailure('Failed to fetch favorite currencies: $e'));
    }
  }
}