import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:thub/Info.dart';
import 'package:thub/Tinfo.dart';
import 'package:thub/coding.dart';
import 'package:thub/slider.dart';
import 'package:thub/page1.dart';

class Gone extends StatefulWidget {
  const Gone({super.key});

  @override
  State<Gone> createState() => _GoneState();
}

class _GoneState extends State<Gone> {
  int _currentIndex = 0;
  List pages = [
    const Myslider(),
    const Events(),
    const Tinfo(),
  ];

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: onTap,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Color.fromARGB(255, 20, 153, 20),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.event),
            title: Text("Events"),
            selectedColor: Colors.pink,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.info_outline_rounded),
            title: Text("Info"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
