import 'package:flutter/material.dart';

class Pagehome extends StatelessWidget {
  const Pagehome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home page",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "poppin",
            ),
          ),
        ],
      ),
    );
  }
}
