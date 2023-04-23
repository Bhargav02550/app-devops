import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:thub/Certificates.dart';
import 'package:thub/Events/Events.dart';
import 'package:thub/Info.dart';
import 'package:thub/slider.dart';
import 'package:thub/team.dart';

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
    const Cert(),
    const Team(),
    const Info(),
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
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: const Color.fromARGB(255, 20, 153, 20),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(Icons.event),
            title: const Text("Events"),
            selectedColor: Colors.pink,
          ),

          /// Certificates
          SalomonBottomBarItem(
            icon: const Icon(Icons.library_books),
            title: const Text("Certifications"),
            selectedColor: Colors.teal,
          ),

          /// Team Details
          SalomonBottomBarItem(
            icon: const Icon(Icons.group),
            title: const Text("Team"),
            selectedColor: Colors.teal,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.info_outline_rounded),
            title: const Text("Info"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
