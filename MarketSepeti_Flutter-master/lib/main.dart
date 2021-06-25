import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/screens/intro.dart';
import 'package:store_app/screens/istatistikler.dart';
import 'package:store_app/screens/log_screen.dart';
import 'package:store_app/widgets/details/grafik.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Market Sepeti',
        theme: ThemeData(
            textTheme:
                GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
            primaryColor: kPrimaryColor,
            accentColor: kPrimaryColor,
            inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Color(0xfff2f9fe),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(25)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(25)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.circular(25)))),
        home: IntroScreen(),
        routes: {
          'login': (context) => LogScreen(
                logType: LogType.logIn,
              ),
          'register': (context) => LogScreen(logType: LogType.register)
        });
  }
}
