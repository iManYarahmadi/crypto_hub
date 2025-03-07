import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_event.freezed.dart';

@freezed
class UserInformationEvent with _$UserInformationEvent {
  const factory UserInformationEvent.fetchUserInformation() =
      _FetchUserInformation;
}
