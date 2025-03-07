import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/datasources/get_favorite_currencies_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/mappers/favorite_currency_mapper.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/repositories/get_favorite_currencies_repository.dart';
import 'package:dartz/dartz.dart';

import 'package:dio/dio.dart';

class GetFavoriteCurrenciesRepositoryImpl
    implements GetFavoriteCurrenciesRepository {
  final GetFavoriteCurrenciesRemoteDataSource remoteDataSource;

  GetFavoriteCurrenciesRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<FavoriteCurrencyEntity>>>
  getFavoriteCurrencies() async {
    try {
      final models = await remoteDataSource.getFavoriteCurrencies();
      return Right(FavoriteCurrencyMapper.toEntityList(models));
    } on DioException catch (e) {
      return Left(ServerFailure.fromStatusCode(e.response?.statusCode ?? 500));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}
