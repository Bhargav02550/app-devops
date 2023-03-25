import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:thub/slider.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 25),
          child: Text(
            'TECHNICAL HUB',
            style: TextStyle(fontFamily: 'Vonique', fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/owl_bg.png'),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 135),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: BlurryContainer(
                        blur: 3,
                        color: Color.fromARGB(92, 17, 17, 18),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 25,
                          width: 150,
                          child: Center(
                            child: Text(
                              'OWL CODER',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Vonique',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Myslider()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/psd31.jpg'),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 135),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: BlurryContainer(
                        blur: 3,
                        color: Color.fromARGB(92, 17, 17, 18),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 25,
                          width: 150,
                          child: Center(
                            child: Text(
                              'PROJECT SPACE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Vonique',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Myslider()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/tc2.1.jpg'),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 135),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: BlurryContainer(
                        blur: 3,
                        color: Color.fromARGB(92, 17, 17, 18),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 25,
                          width: 150,
                          child: Center(
                            child: Text(
                              'T - CONNECT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Vonique',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Myslider()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/tc2.1.jpg'),
                        fit: BoxFit.fill),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 135),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: BlurryContainer(
                        blur: 3,
                        color: Color.fromARGB(92, 17, 17, 18),
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 25,
                          width: 150,
                          child: Center(
                            child: Text(
                              'DRIVE READY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Vonique',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Myslider()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
