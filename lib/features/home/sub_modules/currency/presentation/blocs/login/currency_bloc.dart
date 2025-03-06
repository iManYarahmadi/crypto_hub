import 'package:cryptohub/features/home/sub_modules/currency/domain/usecases/currency_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;
import 'currency_event.dart';
import 'currency_state.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final GetCurrenciesUseCase getCurrenciesUseCase;

  CurrencyBloc(this.getCurrenciesUseCase) : super(const CurrencyState.initial()) {
    on<CurrencyEvent>((event, emit) async {
      await event.when(
        fetchCurrencies: () async {
          emit(const CurrencyState.loading());
          final result = await getCurrenciesUseCase(NoParams());
          result.fold(
                (failure) => emit(CurrencyState.error(failure.message)),
                (currencies) => emit(CurrencyState.loaded(currencies)),
          );
        },
      );
    });
  }
}