import 'package:flutter/material.dart';

import '../Pages/pagehome.dart';
import 'TabBarDemo.dart';

class Alertdailogdemo extends StatelessWidget {
  const Alertdailogdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[600],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.deepPurple[100],
                      title: const Text(
                        "My Message",
                        style:  TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "poppin"),
                      ),
                      content: const Text(
                        "This is a message",
                        style:  TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "poppin"),
                      ),
                    
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Tabbardemo(),
                              ),
                            );
                          },
                          child: const Text("Ok"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text("Show Alert Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
