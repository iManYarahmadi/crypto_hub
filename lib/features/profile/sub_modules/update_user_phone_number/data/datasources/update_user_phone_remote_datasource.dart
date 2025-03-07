import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/core/services/storage_service.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/mappers/update_user_phone_mapper.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/data/models/user_information_model.dart';
import 'package:dio/dio.dart';

abstract class UpdateUserPhoneRemoteDataSource {
  Future<UserInformationModel> updateUserPhone(UpdateUserPhoneParams params);
}

class UpdateUserPhoneRemoteDataSourceImpl
    implements UpdateUserPhoneRemoteDataSource {
  final ApiService apiService;
  final StorageService storageService;

  UpdateUserPhoneRemoteDataSourceImpl(this.apiService, this.storageService);

  @override
  Future<UserInformationModel> updateUserPhone(
    UpdateUserPhoneParams params,
  ) async {
    final token = await storageService.getToken();
    final response = await apiService.put(
      '/api:0uinMmtC/user/{user_id}',
      data: UpdateUserPhoneMapper.toJson(params),
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    return UserInformationModel.fromJson(response.data);
  }
}
