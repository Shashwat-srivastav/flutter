import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData Light(BuildContext context) => ThemeData(
        // fontFamily:
        primarySwatch: Colors.amber,
        appBarTheme: AppBarTheme(
            color: Colors.cyan[50],
            elevation: 1.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );

  static ThemeData Blue(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
            color: Colors.blue[700],
            elevation: 2.0,
            iconTheme: IconThemeData(color: Colors.tealAccent),
            textTheme: Theme.of(context).textTheme),
      );
  static ThemeData Purple(BuildContext context) => ThemeData(
      // fontFamily:
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
        color: Colors.deepPurple[50],
        elevation: 1.0,
        iconTheme: IconThemeData(color: Colors.deepPurple),
        textTheme: Theme.of(context).textTheme,
        // :TextTheme(bodyText1: TextStyle(color: Colors.deepPurple)))
        // textTheme: Theme.of(context).textTheme),
      ));
  // primaryTextTheme:
  // TextTheme(bodyText1: TextStyle(color: Colors.deepPurple)));
}
