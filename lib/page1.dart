import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thub/bottom.dart';
import 'package:thub/slider.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        backgroundColor: Colors.blue[900],
        leading: InkWell(
          child: Icon(Icons.arrow_back_rounded),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Gone()),
            );
          },
        ),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Container(
                child: SizedBox(
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
                          'assets/skdayselfie.png',
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      ClipRRect(
                        child: Image.asset(
                          'assets/skday1.png',
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      ClipRRect(
                        child: Image.asset(
                          'assets/progday1.png',
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      ClipRRect(
                        child: Image.asset('assets/botchal.png'),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage('images/Coding.png'),
                          fit: BoxFit.cover),
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
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage('images/Coding.png'),
                          fit: BoxFit.fill),
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
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage('images/Coding.png'),
                          fit: BoxFit.cover),
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
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage('images/Coding.png'),
                          fit: BoxFit.fill),
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
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
