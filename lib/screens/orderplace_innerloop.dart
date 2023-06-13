import 'package:flutter/material.dart';

class OrderplaceInnerLoop extends StatefulWidget {
  const OrderplaceInnerLoop({super.key});

  @override
  State<OrderplaceInnerLoop> createState() => _OrderplaceInnerLoopState();
}

class _OrderplaceInnerLoopState extends State<OrderplaceInnerLoop> {
  int itemCount2 = 1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: itemCount2,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                  flex: 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  )),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  )),
              Flexible(
                child: itemCount2 < 4
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            itemCount2++;
                          });
                        },
                        child: Text("Add"))
                    : SizedBox(height: 10, width: 30),
              ),
              Flexible(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        itemCount2 > 1 ? (itemCount2--) : SizedBox();
                      });
                    },
                    child: Text("Removes")),
              ),
            ],
          );
        });
  }
}
