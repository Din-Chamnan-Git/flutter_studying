import 'package:flutter/material.dart';

class Stackdemo extends StatelessWidget {
  const Stackdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: const Alignment(0, 0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.deepPurple,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.deepPurple[300],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
  }
}
