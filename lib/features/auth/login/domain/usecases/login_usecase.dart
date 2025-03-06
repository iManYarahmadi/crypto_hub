import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/auth/login/data/params/login_params_model.dart';
import 'package:cryptohub/features/auth/login/domain/entities/login_entity.dart';
import 'package:cryptohub/features/auth/login/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';


class LoginUseCase implements BaseUseCase<LoginEntity, LoginParamsModel> {
  final LoginRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<Either<Failure, LoginEntity>> call(LoginParamsModel params) async {
    return await repository.login(params.email, params.password);
  }
}