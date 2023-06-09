import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/models/stop_model/stop_editingcontroller.dart';

class OrderEditingController {
  TextEditingController orderTotalValue;
  TextEditingController orderQuantity;
  List<StopEditingController> stopController;
  OrderEditingController({
    required this.orderQuantity,
    required this.orderTotalValue,
    required this.stopController,
  });
}
