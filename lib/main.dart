import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'homepage.dart';
//import 'open.dart';
//import 'open1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bhargav',
      home: Myslider(),
    );
  }
}

class Myslider extends StatefulWidget {
  const Myslider({super.key});

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider'),
      ),
      body: Container(
        child: Center(
            child: ListView(
          children: [
            SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                images: [Image.asset('images/pasd31.jpg', fit: BoxFit.cover)],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
