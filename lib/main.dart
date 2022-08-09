import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/homepage.dart';
import 'package:mage8/pages/onboard.dart';
import 'package:mage8/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: pBlue,
          primaryColorLight: pLightBlue,
          primaryColorDark: pDarkBlue,
          backgroundColor: background,
          textTheme: const TextTheme(headlineLarge: TextStyle(height: 46)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: pBlue,
            elevation: 0,
          ))),
      home: HomePage(),
    );
  }
}
