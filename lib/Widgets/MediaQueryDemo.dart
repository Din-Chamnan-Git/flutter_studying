import 'package:flutter/material.dart';

class Mediaquerydemo extends StatelessWidget {
  const Mediaquerydemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Height" + MediaQuery.of(context).size.height.toString()),
            Text("Width" + MediaQuery.of(context).size.width.toString()),
            Text("Aspect Ratio" +
                MediaQuery.of(context).devicePixelRatio.toString()),
            // Text("Orientation" + MediaQuery.of(context).orientation.toString()),
          ],
        ),
      ),
    );
  }
}
