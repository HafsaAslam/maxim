// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      id: json['id'] as String,
      phone: json['phone'] as String,
      cnic: json['cnic'] as String,
      address: json['address'] as String,
      userType: json['userType'] as String,
      userStatus: json['userStatus'] as String,
      zmId: json['zmId'] as String?,
      operationId: json['operationId'] as String?,
      asmId: json['asmId'] as String?,
      asoId: json['asoId'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'phone': instance.phone,
      'cnic': instance.cnic,
      'address': instance.address,
      'userType': instance.userType,
      'userStatus': instance.userStatus,
      'operationId': instance.operationId,
      'zmId': instance.zmId,
      'asmId': instance.asmId,
      'asoId': instance.asoId,
    };
