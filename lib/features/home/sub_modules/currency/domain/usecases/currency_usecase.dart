import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/repositories/currency_repository.dart';
import 'package:dartz/dartz.dart';

class GetCurrenciesUseCase implements BaseUseCase<List<CurrencyEntity>, NoParams> {
  final CurrencyRepository repository;

  GetCurrenciesUseCase(this.repository);

  @override
  Future<Either<Failure, List<CurrencyEntity>>> call(NoParams params) async {
    return await repository.getCurrencies();
  }
}