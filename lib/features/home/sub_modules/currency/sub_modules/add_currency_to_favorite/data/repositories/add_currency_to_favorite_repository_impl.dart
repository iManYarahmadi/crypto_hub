import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/datasources/add_currency_to_favorite_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/mappers/add_currency_to_favorite_mapper.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/params/add_currency_to_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/entities/add_currency_to_favorite_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/repositories/add_currency_to_favorite_repository.dart';
import 'package:dartz/dartz.dart';

import 'package:dio/dio.dart';

class AddCurrencyToFavoriteRepositoryImpl
    implements AddCurrencyToFavoriteRepository {
  final AddCurrencyToFavoriteRemoteDataSource remoteDataSource;

  AddCurrencyToFavoriteRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AddCurrencyToFavoriteEntity>> addCurrencyToFavorite(
    AddCurrencyToFavoriteParams params,
  ) async {
    try {
      final model = await remoteDataSource.addCurrencyToFavorite(params);
      return Right(AddCurrencyToFavoriteMapper.toEntity(model));
    } on DioException catch (e) {
      return Left(ServerFailure.fromStatusCode(e.response?.statusCode ?? 500));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}
