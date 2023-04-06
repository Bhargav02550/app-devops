import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thub/7thanv.dart';
import 'package:thub/Prog.dart';
import 'package:thub/Skill.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Do you want to exit an App?'),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: Text('No'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                //return true when click on "Yes"
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                ),
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Image.asset("images/Techo.png"),
            SizedBox(
              width: 100,
            )
          ],
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
                            'images/skdayselfie.png',
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        ClipRRect(
                          child: Image.asset(
                            'images/skday1.png',
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        ClipRRect(
                          child: Image.asset(
                            'images/progday1.png',
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        ClipRRect(
                          child: Image.asset('images/botchal.png'),
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
                            image: AssetImage('images/7thanv.png'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Anv()));
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
                            image:
                                AssetImage('images/Skillers Day Campus TV.png'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Skill()));
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
                            image: AssetImage('images/Pday.png'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Prog()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
