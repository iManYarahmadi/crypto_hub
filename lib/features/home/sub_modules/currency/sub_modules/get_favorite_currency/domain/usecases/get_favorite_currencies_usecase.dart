import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/entities/favorite_currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/repositories/get_favorite_currencies_repository.dart';
import 'package:dartz/dartz.dart';


class GetFavoriteCurrenciesUseCase implements BaseUseCase<List<FavoriteCurrencyEntity>, NoParams> {
  final GetFavoriteCurrenciesRepository repository;

  GetFavoriteCurrenciesUseCase(this.repository);

  @override
  Future<Either<Failure, List<FavoriteCurrencyEntity>>> call(NoParams params) async {
    return await repository.getFavoriteCurrencies();
  }
}