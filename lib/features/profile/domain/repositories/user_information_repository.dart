import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/profile/domain/entities/user_information_entity.dart';
import 'package:dartz/dartz.dart';


abstract class UserInformationRepository {
  Future<Either<Failure, UserInformationEntity>> getUserInformation();
}