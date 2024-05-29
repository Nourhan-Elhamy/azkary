import 'package:azkar/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class firstScrean extends StatefulWidget {
  @override
  State<firstScrean> createState() => _firstScreanState();
}

class _firstScreanState extends State<firstScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: AnimatedSplashScreen(splash:Image.asset("images/azkar image.jpg"),
          splashIconSize: 150,
          duration: 3000,
          splashTransition: SplashTransition.rotationTransition,
          nextScreen: secondScrean()
        
        ),
      ),

    );
  }
}
