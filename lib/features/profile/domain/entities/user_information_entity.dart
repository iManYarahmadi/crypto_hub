import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_entity.freezed.dart';

@freezed
class UserInformationEntity with _$UserInformationEntity {
  const factory UserInformationEntity({
    required int id,
    required int createdAt,
    required String name,
    required String email,
  }) = _UserInformationEntity;
}