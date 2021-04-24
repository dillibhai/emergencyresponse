import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:emergencyresponse/screens/landingpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/images/dhangadhi.JPG',
          ),
          duration: 3000,
          backgroundColor: Colors.white,
          nextScreen: LandingPage(),
          splashTransition: SplashTransition.scaleTransition,
          splashIconSize: 450.0,
        ));
  }
}


