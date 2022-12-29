import "package:flutter/material.dart";
import 'package:flutter_tutorial/route/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool cbutton = false;
String name = "";

class _LoginPageState extends State<LoginPage> {
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
              Text("Hello $name",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey)),
              SizedBox(height: 20),
              TextFormField(
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                    hintText: "Enter User Name", labelText: "User Name"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  setState(() {
                    cbutton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoute.homepage);
                  cbutton = false;
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    shape: cbutton ? BoxShape.circle : BoxShape.rectangle,

                    // borderRadius: BorderRadius.circular(10)
                  ),
                  child: cbutton
                      ? Icon(Icons.done, color: Colors.amberAccent)
                      : Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ),

              // ElevatedButton(
              //   child: Text("Sign In"),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoute.homepage);
              //     print("Button is clicked");
              //   },
              // ),

              SizedBox(height: 20),

              ElevatedButton(
                child: Text("Sign Up"),
                //  style: ButtonStyle(height:20,),
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
