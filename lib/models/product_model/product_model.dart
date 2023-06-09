import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String productName;
  double productPrice;
  int productQuantity;

  double productAmounttValue;

  ProductModel(
      {required this.productName,
      required this.productQuantity,
      required this.productAmounttValue,
      required this.productPrice});

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
