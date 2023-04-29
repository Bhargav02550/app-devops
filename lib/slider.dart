import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thub/Coding1.dart';
import 'package:thub/driveready.dart';
import 'package:thub/T-Connect.dart';
import 'package:thub/open.dart';
import 'package:thub/placement.dart';
import 'package:thub/project.dart';

class Myslider extends StatefulWidget {
  const Myslider({super.key});

  @override
  State<Myslider> createState() => _MysliderState();
}

class _MysliderState extends State<Myslider> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double hig = MediaQuery.of(context).size.height;
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              icon: const Icon(
                Icons.warning_rounded,
                color: Color.fromARGB(255, 226, 183, 53),
                size: 55,
              ),
              backgroundColor: Colors.greenAccent[50],
              content: const Text(
                'Do you really want to exit from the app ?',
                textAlign: TextAlign.center,
              ),
              title: const Text("Are You Sure ?"),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.green[400]),
                        onPressed: () => Navigator.of(context).pop(true),

                        //return true when click on "Yes"
                        child: const Text('Yes'),
                      ),
                    ),
                    SizedBox(
                      width: wid / 20,
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        //return false when click on "NO"
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ) ??
          false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(219, 153, 225, 144),
          title: Image.asset('images/Techo.png',
              fit: BoxFit.cover, height: 35.00, width: 200.00),
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: [
            Container(
              color: Colors.grey[200],
              height: 300,
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  pauseAutoPlayOnTouch: true,
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
                      'images/Events/IMG-20230406-WA0030(1).jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/owlcd.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/pega1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/mind.png'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/codemindsub.png'),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/train.png'),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Owl()));
              },
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
                      fit: BoxFit.cover,
                      //alignment: Alignment(0.0, 1.0),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Home(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
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
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Drive()));
              },
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Know()));
              },
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
                    // ignore: sort_child_properties_last
                    child: Image.asset(
                      'images/CO.png',
                      fit: BoxFit.cover,
                      //alignment: Alignment(0.0, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mpage()),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
