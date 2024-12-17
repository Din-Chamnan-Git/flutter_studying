import 'package:flutter/material.dart';

class Slideimage extends StatelessWidget {
  const Slideimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Image.network(
            "https://static.vecteezy.com/system/resources/thumbnails/003/516/604/small_2x/celebrate-merry-christmas-background-concept-free-vector.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
