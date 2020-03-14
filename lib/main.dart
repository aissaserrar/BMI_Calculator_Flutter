import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi/input_page.dart';

void main() => runApp(BMICalc());

class BMICalc extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
            thumbColor: kAccentColor,
            overlayColor: kAccentColor.withAlpha(20),
            activeTrackColor: Colors.white,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30)),
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      initialRoute: '/',
      home: InputPage() ,
    );
  }
}
