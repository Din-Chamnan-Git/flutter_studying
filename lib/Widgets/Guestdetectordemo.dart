import 'package:flutter/material.dart';

class Guestdetectordemo extends StatefulWidget {
  const Guestdetectordemo({super.key});

  @override
  State<Guestdetectordemo> createState() => _GuestdetectordemoState();
}

int num = 0;

class _GuestdetectordemoState extends State<Guestdetectordemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Item Count $num",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "poppin"),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (num < 10) {
                    num++;
                  } else {
                    num = 0;
                  }
                });
              },
              child: Container(
                width: 100,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Click",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: "poppin",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
