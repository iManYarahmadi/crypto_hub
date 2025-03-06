import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/params/delete_currency_from_favorite_params.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/entities/delete_currency_from_favorite_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/repositories/delete_currency_from_favorite_repository.dart';
import 'package:dartz/dartz.dart';


class DeleteCurrencyFromFavoriteUseCase
    implements BaseUseCase<DeleteCurrencyFromFavoriteEntity, DeleteCurrencyFromFavoriteParams> {
  final DeleteCurrencyFromFavoriteRepository repository;

  DeleteCurrencyFromFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, DeleteCurrencyFromFavoriteEntity>> call(
      DeleteCurrencyFromFavoriteParams params) async {
    return await repository.deleteCurrencyFromFavorite(params);
  }
}