import 'package:flutter/material.dart';

class Open extends StatefulWidget {
  const Open({super.key});

  @override
  State<Open> createState() => _OpenState();
}

class _OpenState extends State<Open> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Image.asset('images/psd31.jpg',
                alignment: Alignment(
                  -0.4,
                  -0.5,
                ),
                height: 400,
                width: 100,
                fit: BoxFit.fitHeight),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Image.asset('images/psd31.jpg',
                alignment: Alignment(-0.4, -0.5),
                height: 300,
                width: 100,
                fit: BoxFit.fitHeight),
          ),
        ],
      ),
    );
  }
}
