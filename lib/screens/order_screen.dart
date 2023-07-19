import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/models/order_model/order_editingcontroller.dart';
import 'package:maxim_ordering_app/models/product_model/product_editingcontroller.dart';
import 'package:maxim_ordering_app/models/product_model/product_model.dart';
import 'package:maxim_ordering_app/models/stop_model/stop_editingcontroller.dart';
import 'package:maxim_ordering_app/screens/add_products.dart';

class OrderScreen extends StatefulWidget {
  final List<ProductModel> productNameList;
  const OrderScreen({
    Key? key,
    required this.productNameList,
  }) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int stopCount = 1;
  OrderEditingController ordercontroller =
      OrderEditingController(stopController: [
    StopEditingController(
        stopNameController: TextEditingController(),
        stopAddressController: TextEditingController(),
        productController: [
          ProductEditingController(
              productNameController: TextEditingController(),
              productPriceController: TextEditingController(),
              productQuantityController: TextEditingController())
        ],
        stopContactNoController: TextEditingController())
  ]);

  refresh() {
    setState(() {});
  }

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
                  AddProduct(
                    productList: widget.productNameList,
                    stopIndex: index,
                    notifyparent: refresh,
                    orderController: ordercontroller,
                  ),
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
                      index + 1 == stopCount.bitLength
                          ? TextButton(
                              onPressed: () {
                                setState(() {
                                  stopCount > 1
                                      ? (stopCount--)
                                      : const SizedBox();
                                });
                              },
                              child: const Text("Remove"))
                          : const SizedBox(),
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
