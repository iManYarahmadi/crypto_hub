import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/domain/usecases/delete_currency_from_favorite_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'delete_currency_from_favorite_event.dart';
import 'delete_currency_from_favorite_state.dart';

class DeleteCurrencyFromFavoriteBloc
    extends Bloc<DeleteCurrencyFromFavoriteEvent, DeleteCurrencyFromFavoriteState> {
  final DeleteCurrencyFromFavoriteUseCase deleteCurrencyFromFavoriteUseCase;

  DeleteCurrencyFromFavoriteBloc(this.deleteCurrencyFromFavoriteUseCase)
      : super(const DeleteCurrencyFromFavoriteState.initial()) {
    on<DeleteCurrencyFromFavoriteEvent>((event, emit) async {
      await event.when(
        deleteCurrencyFromFavorite: (params) async {
          emit(const DeleteCurrencyFromFavoriteState.loading());
          final result = await deleteCurrencyFromFavoriteUseCase(params);
          result.fold(
                (failure) => emit(DeleteCurrencyFromFavoriteState.error(failure.message)),
                (entity) => emit(DeleteCurrencyFromFavoriteState.success(entity)),
          );
        },
      );
    });
  }
}