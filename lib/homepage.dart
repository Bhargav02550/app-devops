import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 5, 6, 6),
      //   title: const Center(
      //       child: Text(
      //     'Bhargav',
      //     style: TextStyle(
      //       fontSize: 30,
      //     ),
      //   )),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 9, 9, 9),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 154, 150, 150),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 154, 150, 150),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 154, 150, 150),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
