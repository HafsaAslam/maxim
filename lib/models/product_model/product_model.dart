import 'package:json_annotation/json_annotation.dart';
import 'package:maxim_ordering_app/models/product_model/product_editingcontroller.dart';

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

  factory ProductModel.fromController(
          ProductEditingController productcontroller) =>
      ProductModel(
          productName: productcontroller.productNameController.text,
          productQuantity:
              int.parse(productcontroller.productQuantityController.text),
          productAmounttValue: double.parse(
              productcontroller.productTotalAmountController().text),
          productPrice:
              double.parse(productcontroller.productPriceController.text));
}
