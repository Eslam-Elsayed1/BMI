import 'package:flutter/material.dart';
import 'package:hello_world/pages/Login.dart';
import 'package:hello_world/pages/signup.dart';

void main() {
  runApp(caloriescounter());
}

class caloriescounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     home: Login(),


      routes: {

        '/Login.dart': (context) => Login(),
        '/signup.dart': (context) => signup(),

      },
    );
  }
}