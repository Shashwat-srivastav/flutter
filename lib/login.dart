import "package:flutter/material.dart";
import 'package:flutter_tutorial/route/MyRoutes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "lib/assets/images/GojoSatoruThumb-320x180.jpg",
                fit: BoxFit.fitWidth,
              ),
              Text("Login Page",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey)),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter User Name", labelText: "User Name"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Sign In"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.homepage);
                  print("Button is clicked");
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Sign Up"),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.sign_up);
                  print("Button is clicked");
                },
              )
            ],
            // child: Center(
            //   child: Text(
            //     "Login / Sign up",
            //     style: TextStyle(
            //       color: Colors.deepPurple,
            //       fontSize: 40,
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
