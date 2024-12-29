import 'package:flutter/material.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Post 3",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "poppin",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
