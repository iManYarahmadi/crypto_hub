import 'package:cryptohub/features/home/sub_modules/currency/data/models/currency_model.dart'
    show CurrencyModel;
import 'package:flutter_test/flutter_test.dart';

void main() {
  const mockCurrency = CurrencyModel(
    id: 1,
    createdAt: 1630000000,
    name: 'Bitcoin',
    price: 50000.0,
    symbol: 'BTC',
    iconAddress: 'https://example.com/btc.png',
    isFavorite: true,
  );

  const mockJsonResponse = {
    'id': 1,
    'created_at': 1630000000,
    'name': 'Bitcoin',
    'price': 50000.0,
    'symbol': 'BTC',
    'icon_address': 'https://example.com/btc.png',
    'is_favorite': true,
  };

  test('fromJson should correctly parse JSON to CurrencyModel', () {
    // Act
    final result = CurrencyModel.fromJson(mockJsonResponse);

    // Assert
    expect(result, equals(mockCurrency));
  });
}
