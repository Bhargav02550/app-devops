import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
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
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  onPageChanged: null,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  ClipRRect(
                    child: Image.asset(
                      'images/team.jpg',
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'images/owl_bg.png',
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'images/psd31.jpg',
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ClipRRect(
                    child: Image.asset('images/thublogo.png'),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  ClipRRect(
                    child: Image.asset('images/PS2.png'),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  ClipRRect(
                    child: Image.asset('images/codemind.png'),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                    ),
                  ],
                  image:
                      DecorationImage(image: AssetImage('images/owlcoder.png')),
                ),
                // child: ClipRRect(
                //   child: Image.asset(
                //     'images/image1.jpg',
                //     fit: BoxFit.fill,
                //   ),
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                child: ClipRRect(
                  child: Image.asset('images/TC.png', fit: BoxFit.none),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                // child: ClipRRect(
                //   child: Image.asset(
                //     'images/image1.jpg',
                //     fit: BoxFit.fill,
                //   ),
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/dp.png'),
                        alignment: Alignment.center),
                  ),
                  // child: ClipRRect(
                  //   child: Image.asset(
                  //     'images/image1.jpg',
                  //     fit: BoxFit.fill,
                  //   ),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
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
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                    ),
                  ],
                  image: DecorationImage(
                      image: AssetImage('images/codemind.png'),
                      alignment: Alignment.center),
                ),
                // child: ClipRRect(
                //   child: Image.asset(
                //     'images/image1.jpg',
                //     fit: BoxFit.fill,
                //   ),
                //   borderRadius: BorderRadius.circular(10),
                // ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
