
import 'package:flutter/material.dart';
import 'package:hello_world/scrence/Dash_Board.dart';
import 'package:hello_world/scrence/Logout.dart';
import 'package:hello_world/scrence/Meals.dart';

import 'package:hello_world/scrence/Setting.dart';

class icons extends StatefulWidget {


  @override
  State<icons> createState() => icon();
}

class icon extends State<icons> {
  int currentindex=0;
  final screens=[Meals(),dashboard(), setting()];
  List<String> screentitle=['Meals','DashBoard','Settings',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          title:  Text(
              screentitle[currentindex],
              // 'Home',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.red,
            type: BottomNavigationBarType.shifting,
            fixedColor: Colors.black,//if it is shifting
            iconSize: 30,

            currentIndex: currentindex,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            onTap: (value) {
              currentindex=value;
              setState(() {

              });
            },
            items: const[
              BottomNavigationBarItem(backgroundColor: Colors.green, icon: Icon(Icons.food_bank),label: 'Meals'),
              BottomNavigationBarItem(backgroundColor: Colors.teal, icon: Icon(Icons.dashboard),label: 'DashBoard'),
              BottomNavigationBarItem(backgroundColor: Colors.purple, icon: Icon(Icons.settings),label: 'Settings')
            ]),
        body: IndexedStack(index: currentindex,children: screens,)
    );
  }
}