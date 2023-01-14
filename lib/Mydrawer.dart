import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              // margin: EdgeInsets.zero,
              accountName: Text("Name"),
              accountEmail: Text("email@account"),
            )),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            // color: Colors.deepPurple,
          ),
          title: Text("DashBoard"),
        ),
      ],
    ));
  }
}
