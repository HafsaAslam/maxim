import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/firebase_options.dart';

import 'package:maxim_ordering_app/utilities/auth_redirect_screen.dart';

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
      home: AuthRedirectScreen(),
    );
    // home: const(title: 'Flutter Demo Home Page'),
  }
}
// 'product': instance.product.map((e) => e.toJson()),