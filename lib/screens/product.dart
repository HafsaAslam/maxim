import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import '../models/product_model/product_model.dart';

class ProductClass extends StatefulWidget {
  const ProductClass({super.key});

  @override
  State<ProductClass> createState() => _ProductClassState();
}

class _ProductClassState extends State<ProductClass> {
  CollectionReference productReference =
      FirebaseFirestore.instance.collection("product");
  void createDocument() async {
    ProductModel productModel = ProductModel(
        productName: "Dog Food",
        productQuantity: 1,
        productAmounttValue: 1500,
        productPrice: 1500);

    try {
      await productReference.add(productModel.toJson());

      print('Document created successfully!');
    } catch (error) {
      print('Error creating document: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Prodct'),
      ),
      body: Center(
          child: TextButton(
        child: Text("create"),
        onPressed: () {
          createDocument();
        },
      )),
    );
  }
}
