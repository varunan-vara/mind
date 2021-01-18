import 'package:flutter/material.dart';

int colourMode = 0;

/*
Navy Blue - #03045E
Star Command Blue - #0077B6
Cerulean Crayola - #00B4D8
Sky Blue Corola - #90E0EF
Light Cyan - #D1F7FF
*/

ThemeData appTheme()  {
  TextStyle whiteText() {
    return TextStyle(color: Colors.white);
  }

  TextStyle blackText() {
    return TextStyle(color: Colors.black);
  }

  TextStyle ligthgreyText() {
    return TextStyle(color: Colors.grey[400]);
  }

    return (colourMode == 1)
      //(darkmode)
      ? ThemeData(
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
      //(potential solaroid mode)
      : (colourMode == 2)
          ? ThemeData()
          //Following for if colourmode is 0, or error (lightmode)
          : ThemeData(
          textSelectionColor: Colors.grey[200],
          accentColor: Color(0xff90e0ef),
          backgroundColor: Colors.grey[150],
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
          primaryColor: Color(0xff00b4d8),
        );
}
