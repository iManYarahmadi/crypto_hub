import 'package:cryptohub/features/profile/sub_modules/user_information/domain/entities/user_information_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_state.freezed.dart';

@freezed
class UserInformationState with _$UserInformationState {
  const factory UserInformationState.initial() = _Initial;
  const factory UserInformationState.loading() = _Loading;
  const factory UserInformationState.loaded(UserInformationEntity userInfo) =
      _Loaded;
  const factory UserInformationState.error(String message) = _Error;
}
