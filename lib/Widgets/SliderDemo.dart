import 'package:flutter/material.dart';

class Sliderdemo extends StatefulWidget {
  const Sliderdemo({super.key});

  @override
  State<Sliderdemo> createState() => _SliderdemoState();
}

class _SliderdemoState extends State<Sliderdemo> {
  double _correntValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _correntValue.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Slider(
              value: _correntValue,
              label: _correntValue.toString(),
              min: 0,
              max: 10,
              onChanged: (value) {
                setState(() {
                  _correntValue = value;
                });
              })
        ],
      ),
    );
  }
}
