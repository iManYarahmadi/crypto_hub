import 'dart:developer' as developer show log;
import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/datasources/delete_currency_from_favorite_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/mappers/delete_currency_from_favorite_mapper.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/params/delete_currency_from_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/entities/delete_currency_from_favorite_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/repositories/delete_currency_from_favorite_repository.dart';
import 'package:dartz/dartz.dart';
import 'dart:developer' as developer;
class DeleteCurrencyFromFavoriteRepositoryImpl implements DeleteCurrencyFromFavoriteRepository {
  final DeleteCurrencyFromFavoriteRemoteDataSource remoteDataSource;

  DeleteCurrencyFromFavoriteRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, DeleteCurrencyFromFavoriteEntity>> deleteCurrencyFromFavorite(
      DeleteCurrencyFromFavoriteParams params) async {
    try {
      final model = await remoteDataSource.deleteCurrencyFromFavorite(params);
      final entity = DeleteCurrencyFromFavoriteMapper.toEntity(model);
      if (entity.code.contains('ERROR')) {
        return Left(ServerFailure(entity.message));
      }
      return Right(entity);
    } catch (e, stackTrace) {
      developer.log(
        'Delete currency from favorite failed: $e',
        name: 'DeleteCurrencyFromFavoriteRepository',
        error: e,
        stackTrace: stackTrace,
      );
      return Left(ServerFailure('Failed to delete currency from favorites: $e'));
    }
  }
}