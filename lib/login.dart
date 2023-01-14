import 'package:flutter/cupertino.dart';
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
  final _formKey = GlobalKey<FormState>();

  // movetoHome(BuildContext context) async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       cbutton = true;
  //     });
  //     await Future.delayed(Duration(seconds: 1));
  //     await Navigator.pushNamed(context, MyRoute.homepage);
  //     setState(() {
  //       cbutton = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  "lib/assets/images/undraw_Team_up_re_84ok.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text("Hello " + name,
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 13, 25, 32))),
              SizedBox(height: 20),

              TextFormField(
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.profile_circled),
                    hintText: "Enter User Name",
                    labelText: "User Name"),
                validator: (value) {
                  if (value == null) {
                    return "Enter the name";
                  }
                  return null;
                },
              ),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.lock),
                    hintText: "Enter Password",
                    labelText: "Password"),
                validator: (value) {
                  // int? x = value?.length;
                  if (value!.length < 6) {
                    return "Length is too short";
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),

              Hero(
                tag: Key("home"),
                child: Material(
                  child: InkWell(
                    splashColor: Colors.amberAccent,
                    onTap: () async {
                      setState(() {
                        cbutton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoute.homepage);
                      setState(() {
                        cbutton = false;
                      });
                    },
                    //=> movetoHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 40,
                      width: cbutton ? 40 : 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(cbutton ? 50 : 8),
                        color: Colors.blueGrey,
                        // shape: cbutton ? BoxShape.circle : BoxShape.rectangle,
                      ),
                      child: cbutton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
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
    ));
  }
}
