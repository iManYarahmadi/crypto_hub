import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/entities/user_information_entity.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/repositories/user_information_repository.dart';
import 'package:dartz/dartz.dart';


class UserInformationUseCase implements BaseUseCase<UserInformationEntity, NoParams> {
  final UserInformationRepository repository;

  UserInformationUseCase(this.repository);

  @override
  Future<Either<Failure, UserInformationEntity>> call(NoParams params) async {
    return await repository.getUserInformation();
  }
}