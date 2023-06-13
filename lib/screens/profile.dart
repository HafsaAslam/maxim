import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/order_place_screen.dart';
import 'package:maxim_ordering_app/screens/orderplace_innerloop.dart';

class ProfileSreen extends StatefulWidget {
  const ProfileSreen({super.key});

  @override
  State<ProfileSreen> createState() => _ProfileSreenState();
}

class _ProfileSreenState extends State<ProfileSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Row(children: [
        TextButton(
          child: Text("Order Place here"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const OrderPlaceScreen()));
          },
        ),
        TextButton(
          child: Text("logout"),
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
        )
      ]),
    );
  }
}
