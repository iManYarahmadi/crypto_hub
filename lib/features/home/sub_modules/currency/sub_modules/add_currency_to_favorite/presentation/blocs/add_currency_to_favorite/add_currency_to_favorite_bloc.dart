import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/domain/usecases/add_currency_to_favorite_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_currency_to_favorite_event.dart';
import 'add_currency_to_favorite_state.dart';

class AddCurrencyToFavoriteBloc
    extends Bloc<AddCurrencyToFavoriteEvent, AddCurrencyToFavoriteState> {
  final AddCurrencyToFavoriteUseCase addCurrencyToFavoriteUseCase;

  AddCurrencyToFavoriteBloc(this.addCurrencyToFavoriteUseCase)
    : super(const AddCurrencyToFavoriteState.initial()) {
    on<AddCurrencyToFavoriteEvent>((event, emit) async {
      await event.when(
        addCurrencyToFavorite: (params) async {
          emit(const AddCurrencyToFavoriteState.loading());
          final result = await addCurrencyToFavoriteUseCase(params);
          result.fold(
            (failure) =>
                emit(AddCurrencyToFavoriteState.error(failure.message)),
            (favorite) => emit(AddCurrencyToFavoriteState.success(favorite)),
          );
        },
      );
    });
  }
}
