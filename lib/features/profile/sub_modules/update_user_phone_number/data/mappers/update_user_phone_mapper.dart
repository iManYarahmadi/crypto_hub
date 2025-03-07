import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/entities/update_user_phone_entity.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/data/models/user_information_model.dart';

class UpdateUserPhoneMapper {
  static UpdateUserPhoneEntity toEntity(UserInformationModel model) {
    return UpdateUserPhoneEntity(
      id: model.id,
      createdAt: model.createdAt,
      name: model.name,
      email: model.email,
      phoneNumber: model.phoneNumber ?? '', // اگه null بود، خالی برمی‌گردونیم
    );
  }

  static Map<String, dynamic> toJson(UpdateUserPhoneParams params) {
    return {'phone_number': params.phoneNumber};
  }
}
