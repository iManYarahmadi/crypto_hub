import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/home/sub_modules/currency/domain/entities/currency_entity.dart'
    show CurrencyEntity;
import 'package:cryptohub/features/home/sub_modules/currency/domain/repositories/currency_repository.dart'
    show CurrencyRepository;
import 'package:cryptohub/features/home/sub_modules/currency/domain/usecases/currency_usecase.dart'
    show GetCurrenciesUseCase;
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCurrencyRepository extends Mock implements CurrencyRepository {}

void main() {
  late MockCurrencyRepository mockCurrencyRepository;
  late GetCurrenciesUseCase getCurrenciesUseCase;

  setUp(() {
    mockCurrencyRepository = MockCurrencyRepository();
    getCurrenciesUseCase = GetCurrenciesUseCase(mockCurrencyRepository);
  });

  var mockCurrencies = [
    CurrencyEntity(
      id: 1,
      name: 'Bitcoin',
      price: 50000.0,
      symbol: 'BTC',
      iconAddress: '',
    ),
    CurrencyEntity(
      id: 2,
      name: 'Ethereum',
      price: 3000.0,
      symbol: 'ETH',
      iconAddress: '',
    ),
  ];

  var mockFailure = ServerFailure('Failed to fetch currencies');

  test(
    'getCurrenciesUseCase should return list of CurrencyEntity on success',
    () async {
      // Arrange
      when(
        () => mockCurrencyRepository.getCurrencies(),
      ).thenAnswer((_) async => Right(mockCurrencies));

      // Act
      final result = await getCurrenciesUseCase(NoParams());

      // Assert
      expect(result, Right(mockCurrencies));
      verify(() => mockCurrencyRepository.getCurrencies()).called(1);
    },
  );

  test('getCurrenciesUseCase should return failure on error', () async {
    // Arrange
    when(
      () => mockCurrencyRepository.getCurrencies(),
    ).thenAnswer((_) async => Left(mockFailure));

    // Act
    final result = await getCurrenciesUseCase(NoParams());

    // Assert
    expect(result, Left(mockFailure));
    verify(() => mockCurrencyRepository.getCurrencies()).called(1);
  });
}
