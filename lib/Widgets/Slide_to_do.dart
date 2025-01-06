import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToDo extends StatefulWidget {
  const SlideToDo({super.key});

  @override
  State<SlideToDo> createState() => _SlideToDoState();
}

class _SlideToDoState extends State<SlideToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SlideAction(
            elevation: 0,
            innerColor: Colors.deepPurple,
            outerColor: Colors.deepPurple[200],
            borderRadius: 20,
            sliderButtonIcon: const Icon(
              Icons.lock,
              color: Colors.white,
            ),
            text: "Slide to Unlock My",
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            sliderRotate: false,
            onSubmit: () {
              //todo Somthing
            },
          ),
        ),
      ),
    );
  }
}
