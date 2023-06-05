import 'package:json_annotation/json_annotation.dart';
import 'package:maxim_ordering_app/models/stop_model.dart';
part 'order_model.g.dart';

@JsonSerializable()
class OrderModel {
  String orderNumber;
  String orderStatus;
  String dealerId;
  String asoId;
  String asmId;
  String zmId;
  String operationId;
  double credit;
  String creditStatus;
  double cash;
  String bank;
  String recieptPicture;

  List<StopModel> stop;

  OrderModel({
    required this.orderNumber,
    required this.orderStatus,
    required this.dealerId,
    required this.asoId,
    required this.asmId,
    required this.zmId,
    required this.operationId,
    required this.bank,
    required this.cash,
    required this.credit,
    required this.creditStatus,
    required this.recieptPicture,
    required this.stop,
  });
  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
