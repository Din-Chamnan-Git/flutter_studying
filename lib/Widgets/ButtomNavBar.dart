import 'package:day01/Pages/accountpage.dart';
import 'package:day01/Pages/messagepage.dart';
import 'package:day01/Pages/settingpage.dart';
import 'package:flutter/material.dart';

import '../Pages/pagehome.dart';

class mybutton extends StatefulWidget {
  const mybutton({super.key});

  @override
  State<mybutton> createState() => _mybuttonState();
}

class _mybuttonState extends State<mybutton> {
  int indexPage = 0;

  void seletePage(int index) {
    setState(() {
      indexPage = index;
    });
  }

  final List<Widget> pages = [
    const Pagehome(),
    const Messagepage(),
    const Settingpage(),
    const Accountpage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "My App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "poppin",
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[400],
        child: Container(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: "poppin",
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppin",
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Pagehome(),
                    ),
                  );
                },
              ),
              const ListTile(
                leading: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                title: Text(
                  "Message",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppin",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: pages[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        onTap: seletePage,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
