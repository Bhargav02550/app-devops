import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'homepage.dart';
import 'open.dart';
import 'open1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Color.fromARGB(255, 0, 0, 0)),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Bhargav',
      home: Home(),
      //home: Open1(),
    );
  }
}
