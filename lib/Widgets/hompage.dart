import 'package:day01/compunet/slideImage.dart';
import 'package:day01/compunet/_post.dart';
import 'package:flutter/material.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  List<String> postImge = ["post1", "post2", "post3", "post4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color(0xFFa51c30),
        title: const Text(
          "Merry Christmas",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppin',
              color: Colors.white),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          const Icon(
            Icons.ac_unit_rounded,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: 350,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Slideimage();
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Post New",
                style: TextStyle(
                    fontFamily: "poppin",
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                child: ListView.builder(
                  shrinkWrap:
                      true, // Ensures the ListView only takes necessary space\

                  physics:
                      const NeverScrollableScrollPhysics(), // Disables ListView scrolling
                  itemCount: postImge.length,
                  itemBuilder: (context, index) {
                    return postBlog(
                      txtPost: postImge[index],
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
