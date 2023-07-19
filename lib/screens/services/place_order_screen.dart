import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/models/product_model/product_model.dart';
import 'package:maxim_ordering_app/screens/order_screen.dart';

class PlaceOrderScreen extends StatefulWidget {
  const PlaceOrderScreen({super.key});

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('product').get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              );
            }
            if (snapshot.hasData) {
              List<ProductModel> productList = [];
              int? productCount = snapshot.data?.docs.length;

              for (int i = 0; i < productCount!; i++) {
                final json = snapshot.data?.docs[i].data();
                productList.add(ProductModel.fromJson(json!));
              }

              return OrderScreen(
                productNameList: productList,
              );
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
              ));
            }
          }),
    );
  }
}
