import 'package:day01/ScreenSplash/AnimateSplashScreenDemo.dart';
import 'package:flutter/material.dart';

import 'ScreenSplash/splashScreen.dart';
import 'Widgets/AlertDailogDemo.dart';
import 'Widgets/ButtomNavBar.dart';
import 'Widgets/InputTextField.dart';
import 'Widgets/MediaQueryDemo.dart';
import 'Widgets/PageviewDemo.dart';
import 'Widgets/SliverAppbardemo.dart';
import 'Widgets/Stackdemo.dart';
import 'Widgets/TabBarDemo.dart';
import 'Widgets/animateIcon.dart';
import 'Widgets/timerCountdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DemoAnimateIcon(),
      debugShowCheckedModeBanner: false,
    );
  }
}
