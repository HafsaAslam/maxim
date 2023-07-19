import 'package:json_annotation/json_annotation.dart';
import 'package:maxim_ordering_app/models/product_model/product_model.dart';
import 'package:maxim_ordering_app/models/stop_model/stop_editingcontroller.dart';

part 'stop_model.g.dart';

@JsonSerializable()
class StopModel {
  String stopName;
  String stopAddress;
  String stopConatctNo;

  int stopTotalquantity;
  double stopTotalValue;

  // name, contact, int qunatity,
  List<ProductModel> stopProducts;
  StopModel(
      {required this.stopName,
      required this.stopAddress,
      required this.stopProducts,
      required this.stopConatctNo,
      required this.stopTotalValue,
      required this.stopTotalquantity});

  factory StopModel.fromJson(Map<String, dynamic> json) =>
      _$StopModelFromJson(json);

  Map<String, dynamic> toJson() => _$StopModelToJson(this);

  factory StopModel.fromController(StopEditingController stopcontroller) =>
      StopModel(
          stopName: stopcontroller.stopNameController.text,
          stopAddress: stopcontroller.stopAddressController.text,
          stopProducts: List.generate(
              stopcontroller.productController.length,
              (index) => ProductModel.fromController(
                  stopcontroller.productController[index])),
          stopConatctNo: stopcontroller.stopContactNoController.text,
          stopTotalValue:
              double.parse(stopcontroller.stopTotalValueController().text),
          stopTotalquantity:
              int.parse(stopcontroller.stopTotalQuantityController().text));
}
