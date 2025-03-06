import 'dart:developer' as developer show log;
import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/datasources/add_currency_to_favorite_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/mappers/add_currency_to_favorite_mapper.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/entities/add_currency_to_favorite_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/repositories/add_currency_to_favorite_repository.dart';
import 'package:dartz/dartz.dart';
import 'dart:developer' as developer;


class AddCurrencyToFavoriteRepositoryImpl implements AddCurrencyToFavoriteRepository {
  final AddCurrencyToFavoriteRemoteDataSource remoteDataSource;

  AddCurrencyToFavoriteRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AddCurrencyToFavoriteEntity>> addCurrencyToFavorite(int cryptocurrencyId) async {
    try {
      final model = await remoteDataSource.addCurrencyToFavorite(cryptocurrencyId);
      return Right(AddCurrencyToFavoriteMapper.toEntity(model));
    } catch (e, stackTrace) {
      developer.log(
        'Add currency to favorite failed: $e',
        name: 'AddCurrencyToFavoriteRepository',
        error: e,
        stackTrace: stackTrace,
      );
      return Left(ServerFailure('Failed to add currency to favorites: $e'));
    }
  }
}