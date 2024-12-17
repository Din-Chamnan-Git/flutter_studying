import 'package:flutter/material.dart';

class postBlog extends StatelessWidget {
  final txtPost;
  const postBlog({super.key, required this.txtPost});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Container(
          width: 350,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.green[200],
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: Text(
            txtPost,
            style: TextStyle(
              fontSize: 20,
              fontFamily: "poppin",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
