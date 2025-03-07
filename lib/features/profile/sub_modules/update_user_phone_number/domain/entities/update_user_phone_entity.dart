import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_phone_entity.freezed.dart';

@freezed
class UpdateUserPhoneEntity with _$UpdateUserPhoneEntity {
  const factory UpdateUserPhoneEntity({
    required int id,
    required int createdAt,
    required String name,
    required String email,
    required String phoneNumber,
  }) = _UpdateUserPhoneEntity;
}