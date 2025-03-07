import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/data/datasources/user_information_remote_datasource.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/data/mappers/user_information_mapper.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/entities/user_information_entity.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/repositories/user_information_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class UserInformationRepositoryImpl implements UserInformationRepository {
  final UserInformationRemoteDataSource remoteDataSource;

  UserInformationRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, UserInformationEntity>> getUserInformation() async {
    try {
      final model = await remoteDataSource.getUserInformation();
      return Right(UserInformationMapper.toEntity(model));
    } on DioException catch (e) {
      return Left(ServerFailure.fromStatusCode(e.response?.statusCode ?? 500));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}
