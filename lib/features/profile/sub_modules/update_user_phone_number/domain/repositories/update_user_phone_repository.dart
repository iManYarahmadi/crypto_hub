import 'package:cryptohub/core/error/failure.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/entities/update_user_phone_entity.dart';
import 'package:dartz/dartz.dart';

abstract class UpdateUserPhoneRepository {
  Future<Either<Failure, UpdateUserPhoneEntity>> updateUserPhone(
    UpdateUserPhoneParams params,
  );
}
