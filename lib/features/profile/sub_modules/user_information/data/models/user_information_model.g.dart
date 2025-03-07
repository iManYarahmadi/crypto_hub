// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInformationModelImpl _$$UserInformationModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserInformationModelImpl(
  id: (json['id'] as num).toInt(),
  createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? "",
  email: json['email'] as String? ?? "",
  phoneNumber: json['phone_number'] as String? ?? "",
);

Map<String, dynamic> _$$UserInformationModelImplToJson(
  _$UserInformationModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'created_at': instance.createdAt,
  'name': instance.name,
  'email': instance.email,
  'phone_number': instance.phoneNumber,
};
