import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/screens/orderplace_innerloop.dart';

class OrderPlaceScreen extends StatefulWidget {
  const OrderPlaceScreen({super.key});

  @override
  State<OrderPlaceScreen> createState() => _OrderPlaceScreenState();
}

class _OrderPlaceScreenState extends State<OrderPlaceScreen> {
  int stopCount = 1;
  String dropdownValue = 'Stop 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place Order Screen'),
      ),
      body: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: stopCount,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Stop${index + 1}",
                              style: TextStyle(fontSize: 25)),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 150,
                            // flex: 2,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Contact No',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          )
                        ]),
                  ),
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
                  OrderplaceInnerLoop(),
                  // index + 1 == stopCount.bitLength
                  //     ?
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              if (stopCount < 4) {
                                stopCount++;
                              } else {
                                const Text("cant add");
                              }
                            });
                          },
                          child: const Text("Add")),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              stopCount > 1 ? (stopCount--) : const SizedBox();
                            });
                          },
                          child: const Text("Remove")),
                    ],
                  )
                  // : SizedBox(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
