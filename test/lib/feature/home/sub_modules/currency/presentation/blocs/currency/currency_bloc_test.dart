import 'package:bloc_test/bloc_test.dart';
import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/repositories/currency_repository.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_bloc.dart' show CurrencyBloc;
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_event.dart';
import 'package:cryptohub/features/home/sub_modules/currency/presentation/blocs/currency/currency_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/usecases/currency_usecase.dart';


class MockCurrencyRepository extends Mock implements CurrencyRepository {}

void main() {
  late MockCurrencyRepository mockCurrencyRepository;
  late GetCurrenciesUseCase getCurrenciesUseCase;
  late CurrencyBloc currencyBloc;

  const mockCurrencies = [
    CurrencyEntity(id: 1, name: 'Bitcoin', price: 50000.0, symbol: 'BTC', iconAddress: ''),
    CurrencyEntity(id: 2, name: 'Ethereum', price: 3000.0, symbol: 'ETH', iconAddress: ''),
  ];

  final mockFailure = ServerFailure('Failed to fetch currencies');

  setUp(() {
    mockCurrencyRepository = MockCurrencyRepository();
    getCurrenciesUseCase = GetCurrenciesUseCase(mockCurrencyRepository);
    currencyBloc = CurrencyBloc(getCurrenciesUseCase);
  });

  group('CurrencyBloc', () {
    blocTest<CurrencyBloc, CurrencyState>(
      'emits [CurrencyLoading, CurrencyLoaded] when FetchCurrencies succeeds',
      build: () {
        when(() => mockCurrencyRepository.getCurrencies())
            .thenAnswer((_) async => Right(mockCurrencies));
        return currencyBloc;
      },
      act: (bloc) => bloc.add(const CurrencyEvent.fetchCurrencies()),
      expect: () => [
        const CurrencyState.loading(),
        const CurrencyState.loaded(mockCurrencies),
      ],
      verify: (_) {
        verify(() => mockCurrencyRepository.getCurrencies()).called(1);
      },
    );

    blocTest<CurrencyBloc, CurrencyState>(
      'emits [CurrencyLoading, CurrencyError] when FetchCurrencies fails',
      build: () {
        when(() => mockCurrencyRepository.getCurrencies())
            .thenAnswer((_) async => Left(mockFailure));
        return currencyBloc;
      },
      act: (bloc) => bloc.add(const CurrencyEvent.fetchCurrencies()),
      expect: () => [
        const CurrencyState.loading(),
        const CurrencyState.error("Failed to fetch currencies"),
      ],
      verify: (_) {
        verify(() => mockCurrencyRepository.getCurrencies()).called(1);
      },
    );
  });
}