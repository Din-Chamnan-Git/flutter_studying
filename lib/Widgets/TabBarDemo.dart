import 'package:flutter/material.dart';

class Tabbardemo extends StatelessWidget {
  const Tabbardemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TabBar",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "poppin",
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.deepPurple[100],
                    child: const Center(
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple[100],
                    child: const Center(
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple[100],
                    child: const Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
