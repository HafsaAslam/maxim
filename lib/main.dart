import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/firebase_options.dart';
import 'package:maxim_ordering_app/screens/Login.dart';
import 'package:maxim_ordering_app/screens/order.dart';
import 'package:maxim_ordering_app/screens/product.dart';
import 'package:maxim_ordering_app/screens/signup.dart';
import 'package:maxim_ordering_app/screens/stop.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderScreen(),
    );
    // home: const(title: 'Flutter Demo Home Page'),
  }
}
