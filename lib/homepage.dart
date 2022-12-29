import "package:flutter/material.dart";

class homepage extends StatelessWidget {
  int x = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
            child: Container(
          child: Text(
            "hello world $x ",
            style: TextStyle(fontSize: 50, color: Colors.indigo),
          ),
        )));
  }
}
