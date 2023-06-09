import 'package:json_annotation/json_annotation.dart';
import 'package:maxim_ordering_app/models/product_model/product_model.dart';

part 'stop_model.g.dart';

@JsonSerializable()
class StopModel {
  String stopName;
  String stopConatctNo;
  int stopTotalquantity;
  double stopTotalValue;

  // name, contact, int qunatity,
  List<ProductModel> stopProducts;
  StopModel(
      {required this.stopName,
      required this.stopProducts,
      required this.stopConatctNo,
      required this.stopTotalValue,
      required this.stopTotalquantity});

  factory StopModel.fromJson(Map<String, dynamic> json) =>
      _$StopModelFromJson(json);

  Map<String, dynamic> toJson() => _$StopModelToJson(this);
}
