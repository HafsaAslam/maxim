import 'package:flutter/material.dart';

class OrderplaceInnerLoop extends StatefulWidget {
  const OrderplaceInnerLoop({super.key});

  @override
  State<OrderplaceInnerLoop> createState() => _OrderplaceInnerLoopState();
}

class _OrderplaceInnerLoopState extends State<OrderplaceInnerLoop> {
  int productCount = 1;
  @override
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
                        child: TextFormField(
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
              child: productCount < 4
                  ? TextButton(
                      onPressed: () {
                        setState(() {
                          productCount++;
                        });
                      },
                      child: const Text("Add"))
                  : const SizedBox(),
            ),
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
