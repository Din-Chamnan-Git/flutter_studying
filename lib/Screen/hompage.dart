import 'package:flutter/material.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFFa51c30),
        title: Text(
          "Merry Christmas",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppin',
              color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          Icon(
            Icons.ac_unit_rounded,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 350,
                    child: Image.network(
                      "https://static.vecteezy.com/system/resources/thumbnails/003/516/604/small_2x/celebrate-merry-christmas-background-concept-free-vector.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
