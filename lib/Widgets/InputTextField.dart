import 'package:flutter/material.dart';

class Inputtextfield extends StatefulWidget {
  const Inputtextfield({super.key});

  @override
  State<Inputtextfield> createState() => _InputtextfieldState();
}

class _InputtextfieldState extends State<Inputtextfield> {
  final _txtController = TextEditingController();

  String setText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Expanded(
                  child: Text(
                setText,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "poppins",
                  fontSize: 30,
                ),
              )),
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.deepPurple),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: _txtController,
              decoration: InputDecoration(
                hintText: "Enter Your Mind ",
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      _txtController.clear();

                      if (setText.isNotEmpty) {
                        setText = "";
                      }
                    });
                    // setText = "";
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  setText = _txtController.text;
                });
              },
              child: Text("Post"),
            ),
          ],
        ),
      ),
    );
  }
}
