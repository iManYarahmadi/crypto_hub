import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CurrencyRepository {
  Future<Either<Failure, List<CurrencyEntity>>> getCurrencies();
}
