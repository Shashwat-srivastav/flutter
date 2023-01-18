import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/cartData.dart';
import 'package:flutter_tutorial/homepage.dart';
import 'package:flutter_tutorial/model/item.dart/item.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
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
                "\$${cart.TP}".text.xl3.make(),
                ElevatedButton(onPressed: () {}, child: "Pay".text.make())
              ],
            )
          ]),
        ));
  }
}

class CartSlots extends StatefulWidget {
  const CartSlots({super.key});

  @override
  State<CartSlots> createState() => _CartSlotsState();
}

class _CartSlotsState extends State<CartSlots> {
  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return ListView.builder(
        itemCount: cart.it.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(CupertinoIcons.checkmark_seal),
            title: cart.it[index].name.text.make(),
            trailing: InkWell(
                onTap: () {
                  cart.remove(cart.it[index]);

                  setState(() {});
                },
                child: Icon(CupertinoIcons.xmark_seal_fill)),
          );
        });
  }
}
