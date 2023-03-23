import 'package:flutter/material.dart';

class Open1 extends StatefulWidget {
  const Open1({super.key});

  @override
  State<Open1> createState() => _Open1State();
}

class _Open1State extends State<Open1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 400,
              width: 110.5,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(55),
                bottomRight: Radius.circular(55),
              ),
              child: Image.asset(
                'images/owl_bg.png',
                height: 300,
                width: 89,
                fit: BoxFit.cover,
                alignment: Alignment(-0.9, -0.5),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(55),
                bottomRight: Radius.circular(55),
              ),
              child: Image.asset(
                'images/psd31.jpg',
                height: 400,
                width: 110,
                fit: BoxFit.cover,
                alignment: Alignment(-0.4, -0.5),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 300,
              width: 101,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
