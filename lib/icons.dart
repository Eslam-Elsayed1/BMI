
import 'package:flutter/material.dart';
import 'package:hello_world/scrence/Dash_Board.dart';
import 'package:hello_world/scrence/Home_page.dart';
import 'package:hello_world/scrence/Setting.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => icons();
}

class icons extends State<Home> {
  int currentindex=0;
  final screens=[ homepage(),dashboard (),setting () ];
  List<String> screentitle=['Home','Search','About','Settings'];
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
            //if bottomnavigationbar is fixed and fixedcolor is off
            // selectedItemColor: Colors.black,
            // unselectedItemColor: Colors.white,
            // selectedIconTheme: const IconThemeData(color: Colors.blueGrey),
            // unselectedIconTheme: const IconThemeData(color: Colors.amber),
            // selectedFontSize: 20,
            // unselectedFontSize: 13,
            currentIndex: currentindex,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            onTap: (value) {
              currentindex=value;
              setState(() {

              });
            },
            items: const[
              BottomNavigationBarItem(backgroundColor: Colors.red, icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(backgroundColor: Colors.teal, icon: Icon(Icons.search),label: 'Search'),
              BottomNavigationBarItem(backgroundColor: Colors.indigo, icon: Icon(Icons.info),label: 'About'),
              BottomNavigationBarItem(backgroundColor: Colors.purple, icon: Icon(Icons.settings),label: 'Settings')
            ]),
        body: IndexedStack(index: currentindex,children: screens,)
    );
  }
}