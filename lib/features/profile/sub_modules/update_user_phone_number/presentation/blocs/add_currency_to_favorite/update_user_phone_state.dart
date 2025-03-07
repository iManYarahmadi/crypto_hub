import 'package:cryptohub/features/profile/sub_modules/update_user_phone_number/domain/entities/update_user_phone_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_phone_state.freezed.dart';

@freezed
class UpdateUserPhoneState with _$UpdateUserPhoneState {
  const factory UpdateUserPhoneState.initial() = _Initial;
  const factory UpdateUserPhoneState.loading() = _Loading;
  const factory UpdateUserPhoneState.success(UpdateUserPhoneEntity userInfo) =
      _Success;
  const factory UpdateUserPhoneState.error(String message) = _Error;
}
