// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:maxim_ordering_app/models/order_model.dart';

// import 'package:maxim_ordering_app/models/stop_model.dart';

// import '../models/product_model.dart';

// class OrderScreen extends StatefulWidget {
//   const OrderScreen({super.key});

//   @override
//   State<OrderScreen> createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   // CollectionReference stopRef = FirebaseFirestore.instance.collection("order");

//   void addOrder() async {
//     List<ProductModel> pros = [
//       ProductModel(price: 12.12, productName: 'hafsa', quantity: 90),
//       ProductModel(price: 12.12, productName: 'hafsa', quantity: 90),
//     ];

//     List<StopModel> stopNo = [
//       StopModel(
//           product: pros, name: "name", conatctNo: "0308890", totalquantity: 4)
//     ];
//     OrderModel orderModel = OrderModel(
//         orderNumber: "y86889",
//         orderStatus: "orderStatus",
//         dealerId: "dealerId",
//         asoId: "asoId",
//         asmId: "asmId",
//         zmId: "zmId",
//         operationId: "operationId",
//         bank: "bank",
//         cash: 0998,
//         credit: 8888,
//         creditStatus: "creditStatus",
//         recieptPicture: "recieptPicture",
//         stop: stopNo);

//     try {
//       await FirebaseFirestore.instance
//           .collection("order")
//           .add(orderModel.toJson());

//       print('Document created successfully!');
//     } catch (error) {
//       print('Error creating document: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: TextButton(
//         child: Text("create"),
//         onPressed: () {
//           addOrder();
//         },
//       )),
//     );
//   }
// }
