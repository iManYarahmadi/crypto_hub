import 'dart:developer' as developer show log;
import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/datasources/currency_remote_datasource.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/mappers/currency_mapper.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/repositories/currency_repository.dart';
import 'package:dartz/dartz.dart';
import 'dart:developer' as developer;

class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrencyRemoteDataSource remoteDataSource;

  CurrencyRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<CurrencyEntity>>> getCurrencies() async {
    try {
      final models = await remoteDataSource.getCurrencies();
      return Right(CurrencyMapper.toEntityList(models));
    } catch (e, stackTrace) {
      developer.log(
        'Get currencies failed: $e',
        name: 'CurrencyRepository',
        error: e,
        stackTrace: stackTrace,
      );
      return Left(ServerFailure('Failed to fetch currencies: $e'));
    }
  }
}
