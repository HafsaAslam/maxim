import 'package:flutter/material.dart';

import 'package:maxim_ordering_app/models/product_model/product_editingcontroller.dart';

class StopEditingController {
  TextEditingController stopNameController;
  TextEditingController stopTotalValueController;
  TextEditingController stopQuantityController;
  TextEditingController stopContactNo;
  List<ProductEditingController> productController;

  StopEditingController(
      {required this.stopNameController,
      required this.stopTotalValueController,
      required this.stopQuantityController,
      required this.productController,
      required this.stopContactNo});
}
