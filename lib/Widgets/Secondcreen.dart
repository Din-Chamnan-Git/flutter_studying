import 'package:flutter/material.dart';

class Secondcreen extends StatelessWidget {
  const Secondcreen({super.key});
// List<String> num = ["1" ,"2" , "3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 10,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: Text(
                index.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
