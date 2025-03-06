import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/add_currency_to_favorite/data/models/add_currency_to_favorite_model.dart';
import 'package:dio/dio.dart';


class AddCurrencyToFavoriteRemoteDataSource {
  final ApiService apiService;
  final StorageService storageService;

  AddCurrencyToFavoriteRemoteDataSource(this.apiService, this.storageService);

  Future<AddCurrencyToFavoriteModel> addCurrencyToFavorite(int cryptocurrencyId) async {
    final token = await storageService.getToken();
    final response = await apiService.post(
      '/favorites',
      {
        'cryptocurrency_id': cryptocurrencyId,
      },
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return AddCurrencyToFavoriteModel.fromJson(response.data);
  }
}