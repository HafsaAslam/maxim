import 'package:flutter/material.dart';
import 'package:maxim_ordering_app/customized_widgets/orderplace_innerloop.dart';

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
        title: Text('Place Order Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                  Flexible(child: OrderplaceInnerLoop())
                ],
              );
            },
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (itemCount < 4) {
                        itemCount++;
                      } else {
                        Text("cant add");
                      }
                    });
                  },
                  child: Text("Add"))),
          Flexible(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    itemCount > 1 ? (itemCount--) : SizedBox();
                  });
                },
                child: Text("Removes")),
          ),
        ],
      ),
    );
  }
}
