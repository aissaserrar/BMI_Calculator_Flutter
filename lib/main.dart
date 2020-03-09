import 'package:flutter/material.dart';
import 'package:bmi/input_page.dart';


void main() => runApp(BMICalc());

class BMICalc extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff172438),
        primaryColor: Color(0xff172438),
        accentColor: Color(0xff34BACC),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      home: InputPage(),
    );
  }
}
