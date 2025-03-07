import 'dart:developer' as developer show log;

import 'package:cryptohub/core/error/exceptions.dart';
import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/auth/login/data/datasources/login_remote_datasource.dart';
import 'package:cryptohub/features/auth/login/data/mappers/login_mapper.dart';
import 'package:cryptohub/features/auth/login/domain/entities/login_entity.dart';
import 'package:cryptohub/features/auth/login/domain/repositories/login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' show DioException;

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;

  LoginRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, LoginEntity>> login(
    String email,
    String password,
  ) async {
    try {
      final model = await remoteDataSource.login(email, password);
      developer.log(
        'Login successful: Model received - ${model.token}',
        name: 'LoginRepository',
      );
      return Right(LoginMapper.toEntity(model));
    } on DioException catch (e) {
      return Left(ServerFailure.fromStatusCode(e.response?.statusCode ?? 500));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}
