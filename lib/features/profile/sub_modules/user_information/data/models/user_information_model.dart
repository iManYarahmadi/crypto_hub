import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_model.freezed.dart';
part 'user_information_model.g.dart';

@freezed
class UserInformationModel with _$UserInformationModel {
  const factory UserInformationModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'id') required int id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') @Default(0) int createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'name') @Default("") String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'email') @Default("") String email,
  }) = _UserInformationModel;

  factory UserInformationModel.fromJson(Map<String, dynamic> json) => _$UserInformationModelFromJson(json);
}