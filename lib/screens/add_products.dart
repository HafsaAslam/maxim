import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:maxim_ordering_app/models/order_model/order_editingcontroller.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/models/product_model/product_model.dart';

class AddProduct extends StatefulWidget {
  final OrderEditingController orderController;
  final int stopIndex;
  final List<ProductModel> productList;
  final Function() notifyparent;

  const AddProduct(
      {Key? key,
      required this.orderController,
      required this.notifyparent,
      required this.productList,
      required this.stopIndex})
      : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String dropdownValue = "-Select Product-";
  int productCount = 1;

  @override
  List<String> productNamesList = ['-SELECT PRODUCT-'];

  addProductNamesToList() {
    for (int i = 0; i < widget.productList.length; i++) {
      productNamesList.add(widget.productList[i].productName);
    }
  }

  @override
  void initState() {
    addProductNamesToList();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: productCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 2,
                        child: DropdownButtonFormField<String>(
                          //isExpanded: true,
                          value: dropdownValue,

                          onChanged: (String? selectedValue) {
                            for (int i = 0;
                                i < widget.productList.length;
                                i++) {
                              if (selectedValue ==
                                  widget.productList[i].productName) {
                                widget
                                    .orderController
                                    .stopController[widget.stopIndex]
                                    .productController[index]
                                    .productNameController
                                    .text = widget.productList[i].productName;

                                widget
                                        .orderController
                                        .stopController[widget.stopIndex]
                                        .productController[index]
                                        .productPriceController
                                        .text =
                                    widget.productList[i].productPrice
                                        .toString();

                                widget
                                        .orderController
                                        .stopController[widget.stopIndex]
                                        .productController[index]
                                        .productQuantityController
                                        .text =
                                    widget.productList[i].productQuantity
                                        .toString();
                              }
                              if (selectedValue == '-SELECT PRODUCT-') {
                                widget
                                    .orderController
                                    .stopController[widget.stopIndex]
                                    .productController[index]
                                    .productNameController
                                    .text = '00';

                                widget
                                    .orderController
                                    .stopController[widget.stopIndex]
                                    .productController[index]
                                    .productPriceController
                                    .text = '00.00';

                                widget
                                    .orderController
                                    .stopController[widget.stopIndex]
                                    .productController[index]
                                    .productQuantityController
                                    .text = '00.00';
                              }
                            }
                            setState(() {
                              widget.notifyparent();
                            });
                          },
                          items: productNamesList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 1,
                        child: TextFormField(
                          controller: widget
                              .orderController
                              .stopController[widget.stopIndex]
                              .productController[index]
                              .productQuantityController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (x) {
                            setState(() {});
                            widget.notifyparent;
                          },
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 1,
                        child: TextFormField(
                          enabled: false,
                          controller: widget
                              .orderController
                              .stopController[widget.stopIndex]
                              .productController[index]
                              .productPriceController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 1,
                        child: TextFormField(
                          enabled: false,
                          controller: widget
                              .orderController
                              .stopController[widget.stopIndex]
                              .productController[index]
                              .productTotalAmountController(),
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        )),
                  ],
                ),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        productCount++;
                      });
                    },
                    child: const Text("Add"))),
            Flexible(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      productCount > 1 ? (productCount--) : const SizedBox();
                    });
                  },
                  child: const Text("Remove")),
            ),
          ],
        )
      ]),
    );
  }
}
