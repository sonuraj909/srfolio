import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/screens/main/main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSplashScreen(
          curve: Curves.easeInCirc,
          centered: true,
          duration: 3000,
          splashIconSize: 1000,
          splash: Image.asset('assets/image/srfolio-logos_black.png'),
          nextScreen: ScreenMainPage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: kWhiteColor,
        ),
      ),
    );
  }
}
