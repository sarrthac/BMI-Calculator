import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Icons.accessibility,
        nextScreen: InputPage(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Color(0xFF0A0E21),

      )
      //InputPage(),
    );
  }
}
