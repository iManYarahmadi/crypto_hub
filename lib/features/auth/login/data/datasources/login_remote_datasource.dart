
import 'package:cryptohub/core/services/api_service.dart';
import 'package:cryptohub/features/auth/login/data/models/login_model.dart';
import 'package:cryptohub/features/auth/login/data/params/login_params_model.dart';
class LoginRemoteDataSource {
  final ApiService apiService;

  LoginRemoteDataSource(this.apiService);

  Future<LoginModel> login(String email, String password) async {
    final params = LoginParamsModel(email: email, password: password);
    final response = await apiService.post('/auth/login', {
      'email': params.email,
      'password': params.password,
    });
    return LoginModel.fromJson(response.data);
  }
}