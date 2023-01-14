import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: SingleChildScrollView(
                child: Form(
                    child: Column(children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  "lib/assets/images/undraw_Profile_details_re_ch9r.png",
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.profile_circled),
                      hintText: "Enter your name",
                      labelText: "User Name")),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.arrowtriangle_right_fill),
                    hintText: "Enter your age",
                    labelText: "Age"),
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.building_2_fill),
                    hintText: "Enter your college name",
                    labelText: "College Name"),
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.lock_fill),
                    hintText: "Password",
                    labelText: "Password"),
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.lock_open),
                    hintText: "Confirm Password",
                    labelText: " Confirm Password"),
              ),
              SizedBox(height: 120),
              ElevatedButton(
                child: Text("Register"),
                //  style: ButtonStyle(height:20,),
                onPressed: () {},
              )
            ])))));
  }
}
