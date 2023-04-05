import 'package:flutter/material.dart';

class Tinfo extends StatefulWidget {
  const Tinfo({super.key});

  @override
  State<Tinfo> createState() => _TinfoState();
}

class _TinfoState extends State<Tinfo> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            child: Image(image: AssetImage('images/')),
          ),
        ],
      ),
    );
  }
}
