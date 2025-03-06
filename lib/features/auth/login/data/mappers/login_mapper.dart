
import 'package:cryptohub/features/auth/login/data/models/login_model.dart';
import 'package:cryptohub/features/auth/login/domain/entities/login_entity.dart';

class LoginMapper {
  static LoginEntity toEntity(LoginModel model) {
    return LoginEntity(
      token: model.token,
    );
  }
}