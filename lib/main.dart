
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/pages/Login.dart';
import 'package:hello_world/pages/signup.dart';
import 'firebase_options.dart';
import 'icons.dart';

Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
    runApp( caloriescounter());
}
class caloriescounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {

        '/Login.dart': (context) => Login(),
        '/signup.dart': (context) => signup(),
        '/icons.dart': (context) => icons(),



      },
      home:icons(),


    );
  }

}