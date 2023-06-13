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
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: itemCount2,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    )),
                Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    )),
                Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    )),
                Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
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
                          child: const Text("Add"))
                      : const SizedBox(),
                ),
                Flexible(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          itemCount2 > 1 ? (itemCount2--) : const SizedBox();
                        });
                      },
                      child: const Text("Removes")),
                ),
              ],
            );
          }),
    );
  }
}
