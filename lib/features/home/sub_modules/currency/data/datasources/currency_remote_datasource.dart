import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/home/sub_modules/currency/data/models/currency_model.dart';
import 'package:dio/dio.dart';

class CurrencyRemoteDataSource {
  final ApiService apiService;
  final StorageService storageService;

  CurrencyRemoteDataSource(this.apiService, this.storageService);

  Future<List<CurrencyModel>> getCurrencies() async {
    final token = await storageService.getToken();
    final response = await apiService.dio.get(
      '/api:awZizgY2/cryptocurrency',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return (response.data as List).map((json) => CurrencyModel.fromJson(json)).toList();
  }
}