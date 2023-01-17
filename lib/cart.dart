import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "Cart".text.xl2.make(),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            // Placeholder(),
            SingleChildScrollView(
              child: SizedBox(
                height: 650,
                child: CartSlots(),
              ),
            ),
            // Expanded(child: CartSlots()),
            Divider(
              color: Colors.deepPurple,
              thickness: 2.0,
            ),
            ButtonBar(
              buttonAlignedDropdown: true,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "Total Price".text.xl3.make(),
                ElevatedButton(onPressed: () {}, child: "Pay".text.make())
              ],
            )
          ]),
        ));
  }
}

class CartSlots extends StatelessWidget {
  const CartSlots({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(CupertinoIcons.checkmark_seal),
            title: "items".text.make(),
            trailing: Icon(CupertinoIcons.xmark_seal_fill),
          );
        });
  }
}
