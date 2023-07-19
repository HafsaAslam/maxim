import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/add_products.dart';
import 'package:maxim_ordering_app/screens/order_screen.dart';
import 'package:maxim_ordering_app/screens/product.dart';
import 'package:maxim_ordering_app/screens/services/place_order_screen.dart';

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
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.green),
          child: Card(
              child: ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text("Order Place here"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PlaceOrderScreen()));
            },
          )),
        ),
        // Container(
        //   margin: EdgeInsets.all(10),
        //   padding: EdgeInsets.all(15),
        //   decoration: BoxDecoration(color: Colors.green),
        //   child: Card(
        //       child: ListTile(
        //     leading: Icon(Icons.book_outlined),
        //     title: Text("Add Prodct"),
        //     onTap: () {
        //       Navigator.of(context).push(
        //           MaterialPageRoute(builder: (context) => ProductClass()));
        //     },
        //   )),
        // ),
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
