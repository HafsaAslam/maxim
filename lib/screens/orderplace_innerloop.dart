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
              Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Flexible(
                child: itemCount2 < 4
                    ? TextButton(
                        onPressed: () {
                          setState(() {
                            if (itemCount2 < 4) {
                              itemCount2++;
                            } else {
                              Text("cant add");
                            }
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
