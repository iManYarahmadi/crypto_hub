import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/get_favorite_currency/data/models/favorite_currency_model.dart';
import 'package:dio/dio.dart';


class GetFavoriteCurrenciesRemoteDataSource {
  final ApiService apiService;
  final StorageService storageService;

  GetFavoriteCurrenciesRemoteDataSource(this.apiService, this.storageService);

  Future<List<FavoriteCurrencyModel>> getFavoriteCurrencies() async {
    final token = await storageService.getToken();
    final response = await apiService.get(
      '/favorites',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return (response.data as List).map((json) => FavoriteCurrencyModel.fromJson(json)).toList();
  }
}