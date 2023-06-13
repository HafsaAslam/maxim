import 'package:flutter/material.dart';

class ProductEditingController {
  TextEditingController productNameController;
  TextEditingController productPriceController;
  TextEditingController productQuantityController;

  ProductEditingController({
    required this.productNameController,
    required this.productPriceController,
    required this.productQuantityController,
  });

  TextEditingController productTotalAmountController() {
    TextEditingController productTotalAmount = TextEditingController();

    if (productPriceController.text != '' &&
        productQuantityController.text != '') {
      double productTotal = double.parse(productPriceController.text) *
          int.parse(productQuantityController.text);

      productTotalAmount.text = productTotal.toString();
    } else {
      productTotalAmount.text = '0';
    }

    return productTotalAmount;
  }
}
