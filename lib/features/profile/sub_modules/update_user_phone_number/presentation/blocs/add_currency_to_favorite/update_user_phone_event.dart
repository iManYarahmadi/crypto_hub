import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/data/params/update_user_phone_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_phone_event.freezed.dart';

@freezed
class UpdateUserPhoneEvent with _$UpdateUserPhoneEvent {
  const factory UpdateUserPhoneEvent.updatePhone(
    UpdateUserPhoneParams updateUserPhoneParams,
  ) = _UpdatePhone;
}
