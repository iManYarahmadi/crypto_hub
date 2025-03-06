import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params_model.freezed.dart';
part 'login_params_model.g.dart';

@freezed
class LoginParamsModel with _$LoginParamsModel {
  const factory LoginParamsModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'email') required String email,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'password') required String password,
  }) = _LoginParamsModel;

  factory LoginParamsModel.fromJson(Map<String, dynamic> json) => _$LoginParamsModelFromJson(json);
}