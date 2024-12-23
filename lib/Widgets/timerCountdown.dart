import 'dart:async';

import 'package:flutter/material.dart';

class TimerCountdown extends StatefulWidget {
  const TimerCountdown({super.key});

  @override
  State<TimerCountdown> createState() => _TimerCountdownState();
}

class _TimerCountdownState extends State<TimerCountdown> {

  
  Duration duration = const Duration(); // To store the remaining time
  late Timer timer; // Timer object for periodic updates
  final DateTime targetDate =
      DateTime(2024, 12, 31, 23, 59, 59); // Target Date/Time

  @override
  void initState() {
    super.initState();
    startTimer();
  }
  String mytxt = "Start Countdown";

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        final now = DateTime.now();
        duration = targetDate.difference(now);

        if (duration.isNegative) {
          timer.cancel(); // Stop timer when target date is reached
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel(); // Ensure timer is canceled when widget is disposed
    super.dispose();
  }

  String formatDuration(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    return "${days.toString().padLeft(2, '0')}D : "
        "${hours.toString().padLeft(2, '0')}H : "
        "${minutes.toString().padLeft(2, '0')}M : "
        "${seconds.toString().padLeft(2, '0')}S ";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              duration.isNegative
                  ? "Happy New Year!"
                  : formatDuration(duration),
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 247, 247, 247),
                fontWeight: FontWeight.bold,
                fontFamily: "poppin",
              ),
            ),
            const SizedBox(height: 50),
            MaterialButton(
              onPressed: startTimer,
              minWidth: 200,
              height: 50,
              color: Colors.deepPurple,
              child: Text(
               duration.inSeconds <= 0 
                    ? "Happy New Year!"
                    : "Starting Countdown",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "poppin",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
