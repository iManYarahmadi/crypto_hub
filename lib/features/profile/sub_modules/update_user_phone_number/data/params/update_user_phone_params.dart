import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_phone_params.freezed.dart';

@freezed
class UpdateUserPhoneParams with _$UpdateUserPhoneParams {
  const factory UpdateUserPhoneParams({
    // ignore: invalid_annotation_target
    required String phoneNumber,
  }) = _UpdateUserPhoneParams;
}
