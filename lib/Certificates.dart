import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Certifications")),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          // height: 200,
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: [
              Card(
                child: Image.asset(
                  "images/Certify/AWS.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/AZURE AI.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/GCC.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/HTML.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/JAVA.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/JS.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/PS.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/PYTHON.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/REDHAT.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/SALES.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/SECURITY.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/UNITY PROG.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
