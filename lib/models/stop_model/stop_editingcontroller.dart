import 'package:flutter/material.dart';

import 'package:maxim_ordering_app/models/product_model/product_editingcontroller.dart';

class StopEditingController {
  TextEditingController stopNameController;

  TextEditingController stopContactNoController;
  TextEditingController stopAddressController;
  List<ProductEditingController> productController;

  StopEditingController(
      {required this.stopNameController,
      required this.productController,
      required this.stopAddressController,
      required this.stopContactNoController});

  TextEditingController stopTotalValueController() {
    TextEditingController stopTotalValue = TextEditingController();
    double totalamount = 0;
    for (int i = 0; i < productController.length; i++) {
      //if(productController[i].productTotalAmountController().text != '')
      totalamount += double.parse(
          productController[i].productTotalAmountController().text);
    }
    stopTotalValue.text = totalamount.toString();
    return stopTotalValue;
  }

  TextEditingController stopTotalQuantityController() {
    TextEditingController stopTotalQuantity = TextEditingController();
    double totalquantity = 0;
    for (int i = 0; i < productController.length; i++) {
      totalquantity +=
          double.parse(productController[i].productQuantityController.text);
    }
    stopTotalQuantity.text = totalquantity.toString();
    return stopTotalQuantity;
  }
}
