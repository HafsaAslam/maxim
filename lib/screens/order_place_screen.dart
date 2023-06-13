import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/orderplace_innerloop.dart';

class OrderPlaceScreen extends StatefulWidget {
  const OrderPlaceScreen({super.key});

  @override
  State<OrderPlaceScreen> createState() => _OrderPlaceScreenState();
}

class _OrderPlaceScreenState extends State<OrderPlaceScreen> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place Order Screen'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 40,
                margin: EdgeInsets.all(15),
                color: Colors.amber,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 2, child: Text("Product Name")),
                    Expanded(flex: 1, child: Text("Quantity")),
                    Expanded(flex: 1, child: Text("Price")),
                    Expanded(flex: 1, child: Text("Total Amount")),
                  ],
                ),
              ),

              new SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(children: [OrderPlaceScreen()]),
              ),

              //  index + 1 == itemCount.bitLength
              // ?
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          if (itemCount < 4) {
                            itemCount++;
                          } else {
                            const Text("cant add");
                          }
                        });
                      },
                      child: const Text("Add")),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          itemCount > 1 ? (itemCount--) : const SizedBox();
                        });
                      },
                      child: const Text("Removes")),
                ],
              )
              //: SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
