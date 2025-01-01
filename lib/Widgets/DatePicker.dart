import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  DateTime _dateTime = DateTime.now();
  void _chooseDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              _dateTime.day.toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "poppins"),
            ),
            MaterialButton(
              onPressed: () {
                _chooseDate();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Click Choose Date",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
