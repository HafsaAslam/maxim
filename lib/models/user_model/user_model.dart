import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String name;
  String id;
  String phone;
  String cnic;
  String address;
  String userType;
  //Enum userStatus;
  String userStatus;
  String operationId;
  String zmId;
  String asmId;
  String asoId;

  UserModel(
      {required this.name,
      required this.id,
      required this.phone,
      required this.cnic,
      required this.address,
      required this.userType,
      required this.userStatus,
      required this.zmId,
      required this.operationId,
      required this.asmId,
      required this.asoId});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
