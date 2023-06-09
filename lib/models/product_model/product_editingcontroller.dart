import 'package:flutter/material.dart';

class ProductEditingController {
  TextEditingController productNameController;
  TextEditingController productPriceController;
  TextEditingController productQuantityController;

  ProductEditingController(
      {required this.productNameController,
      required this.productPriceController,
      required this.productQuantityController});
}
