
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
  Future<Either<Failure, LoginEntity>> login(String email, String password) async {
    try {
      final model = await remoteDataSource.login(email, password);
      developer.log('Login successful: Model received - ${model.token}', name: 'LoginRepository');
      return Right(LoginMapper.toEntity(model));
    } catch (e, stackTrace) {
      developer.log(
        'Login failed: $e',
        name: 'LoginRepository',
        error: e,
        stackTrace: stackTrace,
      );
      if (e is ServerException) {
        return Left(ServerFailure('خطای سرور: ${e.message}'));
      } else if (e is DioException) {
        return Left(ServerFailure('خطای شبکه: ${e.message}'));
      } else {
        return Left(ServerFailure('خطای ناشناخته: $e'));
      }
    }
  }
}