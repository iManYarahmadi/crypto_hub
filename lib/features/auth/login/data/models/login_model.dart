import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'authToken') @Default('') String token,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
