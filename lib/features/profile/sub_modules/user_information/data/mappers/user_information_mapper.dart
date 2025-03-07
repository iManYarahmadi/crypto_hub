import 'package:cryptohub/features/profile/sub_modules/user_information/data/models/user_information_model.dart';
import 'package:cryptohub/features/profile/sub_modules/user_information/domain/entities/user_information_entity.dart';

class UserInformationMapper {
  static UserInformationEntity toEntity(UserInformationModel model) {
    return UserInformationEntity(
      id: model.id,
      createdAt: model.createdAt,
      name: model.name,
      email: model.email,
    );
  }
}
