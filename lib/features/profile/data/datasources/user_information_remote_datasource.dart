import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/profile/data/models/user_information_model.dart';
import 'package:dio/dio.dart';

class UserInformationRemoteDataSource {
  final ApiService apiService;
  final StorageService storageService;

  UserInformationRemoteDataSource(this.apiService, this.storageService);

  Future<UserInformationModel> getUserInformation() async {
    final token = await storageService.getToken();
    final response = await apiService.get(
      '/api:0uinMmtC/auth/me',
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return UserInformationModel.fromJson(response.data);
  }
}