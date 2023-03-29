import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:thub/homepage.dart';
import 'package:thub/open1.dart';

class Myslider extends StatefulWidget {
  const Myslider({super.key});

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'TECHNICAL HUB',
          style: TextStyle(fontFamily: 'Vonique'),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: ListView(
          children: [
            SizedBox(
              height: 250.0,
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  onPageChanged: null,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/team.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/owl_bg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/psd31.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/thublogo.png'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/PS2.png'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/codemind.png'),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Container(
                  height: 150,
                  width: wid * (0.06),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0),
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                    //image: DecorationImage(image: AssetImage('images/owl.png')),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/main.png',
                      fit: BoxFit.cover,
                      //alignment: Alignment(0.0, 1.0),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                    //image: DecorationImage(image: AssetImage('images/owl.png')),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/TCON.png',
                      fit: BoxFit.fitHeight,
                      //alignment: Alignment(0.0, 1.0),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 5),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                  //image: DecorationImage(image: AssetImage('images/owl.png')),
                ),
                child: ClipRRect(
                  // ignore: sort_child_properties_last
                  child: Image.asset(
                    'images/DR.png',
                    fit: BoxFit.cover,
                    //alignment: Alignment(0.0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 5),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                  //image: DecorationImage(image: AssetImage('images/owl.png')),
                ),
                child: ClipRRect(
                  // ignore: sort_child_properties_last
                  child: Image.asset(
                    'images/PSD.png',
                    fit: BoxFit.cover,
                    //alignment: Alignment(0.0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 5),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                  //image: DecorationImage(image: AssetImage('images/owl.png')),
                ),
                child: ClipRRect(
                  // ignore: sort_child_properties_last
                  child: Image.asset(
                    'images/CO.png',
                    fit: BoxFit.fitHeight,
                    //alignment: Alignment(0.0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        )),
      ),
      // ignore: prefer_const_constructors
      bottomNavigationBar: GNav(tabs: const [
        GButton(
          icon: Icons.event_available_rounded,
          text: 'Home',
        ),
        GButton(
          icon: Icons.event_available_rounded,
          text: 'Home',
        ),
        GButton(
          icon: Icons.event_available_rounded,
          text: 'Home',
        ),
        GButton(
          icon: Icons.event_available_rounded,
          text: 'Home',
        ),
      ]),
    );
  }
}
