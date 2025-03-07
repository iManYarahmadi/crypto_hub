
import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/models/delete_currency_from_favorite_model.dart';
import 'package:cryptohub/features/home/sub_modules/currency/sub_modules/delete_currency_from_favorite/data/params/delete_currency_from_favorite_params.dart';
import 'package:dio/dio.dart';


class DeleteCurrencyFromFavoriteRemoteDataSource {
  final ApiService apiService;
  final StorageService storageService;

  DeleteCurrencyFromFavoriteRemoteDataSource(this.apiService, this.storageService);

  Future<DeleteCurrencyFromFavoriteModel> deleteCurrencyFromFavorite(
      DeleteCurrencyFromFavoriteParams params) async {
    final token = await storageService.getToken();
    final path = '/api:awZizgY2/favorites/${params.favoritesId}';
    final response = await apiService.delete(
      path,
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return DeleteCurrencyFromFavoriteModel.fromJson(response.data);
}}