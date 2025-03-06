import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/auth/login/domain/entities/login_entity.dart';
import 'package:dartz/dartz.dart';


abstract class LoginRepository {
  Future<Either<Failure, LoginEntity>> login(String email, String password);
}
