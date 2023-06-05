import 'package:json_annotation/json_annotation.dart';
import 'package:maxim_ordering_app/models/product_model.dart';

part 'stop_model.g.dart';

@JsonSerializable()
class StopModel {
  String name;
  String conatctNo;
  int totalquantity;
  // name, contact, int qunatity,
  List<ProductModel> product;
  StopModel(
      {required this.product,
      required this.name,
      required this.conatctNo,
      required this.totalquantity});

  factory StopModel.fromJson(Map<String, dynamic> json) =>
      _$StopModelFromJson(json);

  Map<String, dynamic> toJson() => _$StopModelToJson(this);
}
