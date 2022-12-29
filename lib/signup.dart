import "package:flutter/material.dart";

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: SingleChildScrollView(
                child: Column(children: [
              Image.asset("lib/assets/images/GojoSatoruThumb-320x180.jpg"),
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your name", labelText: "Name")),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your age", labelText: "Age"),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your college name",
                    labelText: "College Name"),
              )
            ]))));
  }
}
