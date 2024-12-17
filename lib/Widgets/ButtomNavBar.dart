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
