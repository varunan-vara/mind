import 'dart:html';

import 'package:flutter/material.dart';

//.dart imports
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

//Variable for ThemeData (ie Light Mode Dark Mode)
int colourMode = 0;
void colourChecker() {
  if (colourMode < 3) {
    print("Error in ThemeData - main.dart - colourMode > 2");
  }
}

//Main App Function - MaterialApp
class _MyAppState extends State<MyApp> {
  //Random code that makes things in Widget build() smaller
  TextStyle whiteText() {
    return TextStyle(color: Colors.white);
  }

  //Random code that makes things in Widget build() smaller
  TextStyle blackText() {
    return TextStyle(color: Colors.black);
  }

  //Random code that makes things in Widget build() smaller
  TextStyle ligthgreyText() {
    return TextStyle(color: Colors.grey[400]);
  }

  @override
  Widget build(BuildContext context) {
    //Main Function will be a MaterialApp, might make another version for Cupertino
    return MaterialApp(
      //ThemeData determined based on value of ColourMode
      theme: (colourMode == 1)
          ?
          //DarkMode
          ThemeData(
              textSelectionColor: Colors.grey[700],
              accentColor: Color(0xff03045e),
              backgroundColor: Colors.grey[600],
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
              textTheme: TextTheme(
                headline1: whiteText(),
                headline2: whiteText(),
                headline3: whiteText(),
                headline4: whiteText(),
                headline5: whiteText(),
                headline6: whiteText(),
                headline: whiteText(),
                subhead: whiteText(),
                subtitle1: whiteText(),
                subtitle2: whiteText(),
                subtitle: whiteText(),
              ),
              primaryColor: Colors.grey[800],
            )
          : (colourMode == 2)
              ?
              //Potential Solaroid Mode
              ThemeData()
              :
              //Light Mode, or if all else fails
              ThemeData(
                  textSelectionColor: Colors.grey[200],
                  accentColor: Color(0xff90e0ef),
                  backgroundColor: Colors.grey[150],
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                  textTheme: TextTheme(
                    headline1: blackText(),
                    headline2: blackText(),
                    headline3: blackText(),
                    headline4: blackText(),
                    headline5: blackText(),
                    headline6: blackText(),
                    headline: blackText(),
                    subhead: blackText(),
                    subtitle1: blackText(),
                    subtitle2: blackText(),
                    subtitle: blackText(),
                  ),
                  primaryColor: (colourMode != 0) ? Color(0xff00b4d8) : Colors.red[400],
                ),
      routes: {
        //main search page
        "/": (context) => MainApp(),
        //when a context menu is tapped, the popup following it. will include
        //super widgets
        "/popup": (context) => PopUp(),
        //In the messages tab, this will open up messages
        "/webview": (context) => WebView(),
      },
      initialRoute: "/",
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

//Temp widget to make navigation work
class WebView extends StatefulWidget {
  WebView({Key key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //child: child,
        );
  }
}
