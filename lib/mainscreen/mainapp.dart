import 'package:flutter/material.dart';

//.dart imports
import 'screens/home.dart';

//Checks if user is logged in, else redirects to log in screen
bool isLoggedIn = false;

//class for home screens in _MainAppState
class homeInfo {
  final String title;
  final Widget home;
  //final Icon icon;

  homeInfo(this.title, this.home);
}

//Stateful Widget
class MainApp extends StatefulWidget {
  MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

//Stated App - Main Screen Function
class _MainAppState extends State<MainApp> {
  //Home Widgets - includes log in screen
  List<homeInfo> home = [
    homeInfo(
      "Home", 
      Feed(),
        //add icon here
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        //child: child,
        onPressed: () {},
      ),
      body: Column(
        children: [
          //AppBar()  - (isLoggedin) ? null : AppBar() - same for navbar
          //Body() - create a list function, that updates when navbar is changed
          //navbar
        ],
      ),
    );
  }
}
