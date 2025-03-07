import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/datasources/update_user_phone_remote_datasource.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/mappers/update_user_phone_mapper.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/entities/update_user_phone_entity.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/repositories/update_user_phone_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class UpdateUserPhoneRepositoryImpl implements UpdateUserPhoneRepository {
  final UpdateUserPhoneRemoteDataSource remoteDataSource;

  UpdateUserPhoneRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, UpdateUserPhoneEntity>> updateUserPhone(UpdateUserPhoneParams params) async {
    try {
      final model = await remoteDataSource.updateUserPhone(params);
      return Right(UpdateUserPhoneMapper.toEntity(model));
    } on DioException catch (e) {
      return Left(ServerFailure.fromStatusCode(e.response?.statusCode ?? 500));
    } catch (e) {
      return Left(ServerFailure('Unexpected error: $e'));
    }
  }
}