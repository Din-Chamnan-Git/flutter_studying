import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Widgets/PageviewDemo.dart';

class Animatesplashscreendemo extends StatelessWidget {
  const Animatesplashscreendemo({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(child: Lottie.asset('assets/IconAnimate.json')),
      nextScreen: Pageviewdemo(),
      splashIconSize: 200,
      duration: 5000,
    );
  }
}
