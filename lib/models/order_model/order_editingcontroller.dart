import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/models/stop_model/stop_editingcontroller.dart';

class OrderEditingController {
  List<StopEditingController> stopController;
  OrderEditingController({
    required this.stopController,
  });

  TextEditingController orderTotalValueController() {
    TextEditingController ordertotalvalue = TextEditingController();
    double totalvalue = 0;
    for (int i = 0; i < stopController.length; i++) {
      totalvalue +=
          double.parse(stopController[i].stopTotalValueController().text);
    }
    ordertotalvalue.text = totalvalue.toString();
    return ordertotalvalue;
  }

  TextEditingController orderTotalQuantityController() {
    TextEditingController ordertotalquantity = TextEditingController();
    double totalquantity = 0;
    for (int i = 0; i < stopController.length; i++) {
      totalquantity +=
          double.parse(stopController[i].stopTotalQuantityController().text);
    }
    ordertotalquantity.text = totalquantity.toString();
    return ordertotalquantity;
  }
}
