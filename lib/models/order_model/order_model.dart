import 'package:json_annotation/json_annotation.dart';
import 'package:maxim_ordering_app/models/order_model/order_editingcontroller.dart';
import 'package:maxim_ordering_app/models/stop_model/stop_model.dart';
import 'package:maxim_ordering_app/models/user_model.dart';
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
  double rentAdjusment;
  //bankdeposite
  //rentAdjusment
  double bankdeposite;
  String recieptPicture;
  int orderTotalquantity;
  double orderTotalValue;
  List<StopModel> stop;

  OrderModel({
    required this.orderNumber,
    required this.orderStatus,
    required this.dealerId,
    required this.asoId,
    required this.asmId,
    required this.zmId,
    required this.operationId,
    required this.bankdeposite,
    required this.rentAdjusment,
    required this.credit,
    required this.creditStatus,
    required this.recieptPicture,
    required this.orderTotalValue,
    required this.orderTotalquantity,
    required this.stop,
  });
  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  factory OrderModel.formController(
          OrderEditingController ordercontroller, UserModel userModel) =>
      OrderModel(
          orderNumber: DateTime.now().toString(),
          orderStatus: "orderStatus",
          dealerId: userModel.id,
          asoId: userModel.asoId ?? '',
          asmId: userModel.asmId ?? '',
          zmId: userModel.zmId ?? '',
          operationId: userModel.operationId ?? '',
          bankdeposite: 60,
          rentAdjusment: 90,
          credit: 50,
          creditStatus: "creditStatus",
          recieptPicture: "recieptPicture",
          orderTotalValue:
              double.parse(ordercontroller.orderTotalQuantityController().text),
          orderTotalquantity:
              int.parse(ordercontroller.orderTotalValueController().text),
          stop: List.generate(
              ordercontroller.stopController.length,
              (index) => StopModel.fromController(
                  ordercontroller.stopController[index])));
}
