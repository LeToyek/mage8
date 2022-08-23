import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Test_page.dart';
import 'package:mage8/pages/homepage.dart';
import 'package:mage8/pages/onboard.dart';
import 'package:mage8/pages/register.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
          // textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: pBlue,
            elevation: 0,
          )),
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
              headlineSmall: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              headlineMedium: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              labelSmall:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
      home: const HomePage(),
    );
  }
}
