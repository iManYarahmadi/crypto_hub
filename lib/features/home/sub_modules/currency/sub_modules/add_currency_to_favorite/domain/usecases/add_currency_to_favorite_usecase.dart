import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/params/add_currency_to_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/entities/add_currency_to_favorite_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/repositories/add_currency_to_favorite_repository.dart';
import 'package:dartz/dartz.dart';

class AddCurrencyToFavoriteUseCase
    implements
        BaseUseCase<AddCurrencyToFavoriteEntity, AddCurrencyToFavoriteParams> {
  final AddCurrencyToFavoriteRepository repository;

  AddCurrencyToFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, AddCurrencyToFavoriteEntity>> call(
    AddCurrencyToFavoriteParams params,
  ) async {
    return await repository.addCurrencyToFavorite(params);
  }
}
