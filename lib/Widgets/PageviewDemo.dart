import 'package:day01/Posts/post1.dart';
import 'package:day01/Posts/post3.dart';
import 'package:flutter/material.dart';

import '../Posts/post2.dart';

class Pageviewdemo extends StatelessWidget {
  Pageviewdemo({super.key});
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: const [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }
}
