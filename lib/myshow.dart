import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/item.dart/item.dart';

class MyShow extends StatelessWidget {
  final Item it;
  const MyShow({
    super.key,
    required this.it,
  });
  // const MyShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: GridTile(
        header: Container(child: Text(it.name)),
        child: Image.network(
          it.img,
          height: 10,
          width: 10,
        ),
        footer: Text("\$${it.price}"),
      ),
      // child: ListTile(
      //   leading: Image.network(it.img),
      //   title: Text(
      //     it.name,
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      //   subtitle: Text(it.des),
      //   trailing: Text(
      //     "\$${it.price}",
      //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      //   ),
      // ),
    );
  }
}
