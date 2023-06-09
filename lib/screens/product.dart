// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:flutter/material.dart';
// import 'package:maxim_ordering_app/models/product_model.dart';

// class ProductClass extends StatefulWidget {
//   const ProductClass({super.key});

//   @override
//   State<ProductClass> createState() => _ProductClassState();
// }

// class _ProductClassState extends State<ProductClass> {
//   CollectionReference productReference =
//       FirebaseFirestore.instance.collection("product");
//   void createDocument() async {
//     ProductModel productModel =
//         ProductModel(productName: "productName", quantity: 100, price: 250);
//     try {
//       await productReference.add(productModel.toJson());

//       print('Document created successfully!');
//     } catch (error) {
//       print('Error creating document: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order'),
//       ),
//       body: Center(
//           child: TextButton(
//         child: Text("create"),
//         onPressed: () {
//           createDocument();
//         },
//       )),
//     );
//   }
// }
