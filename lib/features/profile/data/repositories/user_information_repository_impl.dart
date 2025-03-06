import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/profile/data/datasources/user_information_remote_datasource.dart';
import 'package:cryptohub/features/profile/data/mappers/user_information_mapper.dart';
import 'package:cryptohub/features/profile/domain/entities/user_information_entity.dart';
import 'package:cryptohub/features/profile/domain/repositories/user_information_repository.dart';
import 'package:dartz/dartz.dart';

class UserInformationRepositoryImpl implements UserInformationRepository {
  final UserInformationRemoteDataSource remoteDataSource;

  UserInformationRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, UserInformationEntity>> getUserInformation() async {
    try {
      final model = await remoteDataSource.getUserInformation();
      return Right(UserInformationMapper.toEntity(model));
    } catch (e) {
      return Left(ServerFailure('Failed to fetch user information: $e'));
    }
  }
}