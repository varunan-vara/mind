import 'package:flutter/material.dart';

//.dart imports
import 'universalsettings.dart';
import 'mainscreen/mainapp.dart';


//void main function, to run the entire app. Origin file
void main() {
  runApp(MyApp());
}

//Stateful Widget Builder
class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//Main App Function - MaterialApp
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //Main Function will be a MaterialApp, might make another version for Cupertino
    return MaterialApp(
      //universalsettings.dart - sorts out appTheme here
      theme: appTheme(),
      routes: {
        //main 5 tabbed page
        "/": (context) => MainApp(),
        /*
          when a context menu is tapped, the popup following it. will include 
          super widgets
        */
        "/popup": (context) => PopUp(),
      },
    );
  }
}

//Temp widget to make navigation work
class PopUp extends StatelessWidget {
  const PopUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //child: child,
    );
  }
}