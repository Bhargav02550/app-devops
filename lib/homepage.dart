import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get style => null;

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
      body: Center(
        child: ElevatedButton(
          style: style,
          onPressed: () {},
          child: const Text(
            'Bhargav',
            style: TextStyle(
              fontFamily: 'Vonique',
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
    //);
  }
}
