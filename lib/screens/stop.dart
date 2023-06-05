import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/models/product_model.dart';

import 'package:maxim_ordering_app/models/stop_model.dart';

class StopScreen extends StatefulWidget {
  const StopScreen({super.key});

  @override
  State<StopScreen> createState() => _StopScreenState();
}

class _StopScreenState extends State<StopScreen> {
  CollectionReference stopRef = FirebaseFirestore.instance.collection("stop");

  void addStop() async {
    List<ProductModel> pros = [
      ProductModel(price: 12.12, productName: 'hafsa', quantity: 90),
      ProductModel(price: 12.12, productName: 'hafsa', quantity: 90),
    ];
    StopModel stopModel = StopModel(
        product: pros, name: "name", conatctNo: "0308890", totalquantity: 4);
    try {
      await stopRef.add(stopModel.toJson());

      print('Document created successfully!');
    } catch (error) {
      print('Error creating document: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text("Create"),
        onPressed: () {
          addStop();
        },
      )),
    );
  }
}
