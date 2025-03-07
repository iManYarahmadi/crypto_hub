import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/core/usecases/base_usecase.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/entities/update_user_phone_entity.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/repositories/update_user_phone_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateUserPhoneUseCase
    implements BaseUseCase<UpdateUserPhoneEntity, UpdateUserPhoneParams> {
  final UpdateUserPhoneRepository repository;

  UpdateUserPhoneUseCase(this.repository);

  @override
  Future<Either<Failure, UpdateUserPhoneEntity>> call(
    UpdateUserPhoneParams params,
  ) async {
    return await repository.updateUserPhone(params);
  }
}
