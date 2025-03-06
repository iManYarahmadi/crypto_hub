import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/domain/usecases/get_favorite_currencies_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;
import 'get_favorite_currencies_event.dart';
import 'get_favorite_currencies_state.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GetFavoriteCurrenciesBloc extends Bloc<GetFavoriteCurrenciesEvent, GetFavoriteCurrenciesState> {
  final GetFavoriteCurrenciesUseCase getFavoriteCurrenciesUseCase;

  GetFavoriteCurrenciesBloc(this.getFavoriteCurrenciesUseCase)
      : super(const GetFavoriteCurrenciesState.initial()) {
    on<GetFavoriteCurrenciesEvent>((event, emit) async {
      await event.when(
        fetchFavoriteCurrencies: () async {
          emit(const GetFavoriteCurrenciesState.loading());
          final result = await getFavoriteCurrenciesUseCase(NoParams());
          result.fold(
                (failure) => emit(GetFavoriteCurrenciesState.error(failure.message)),
                (favorites) => emit(GetFavoriteCurrenciesState.success(favorites)),
          );
        },
      );
    });
  }
}