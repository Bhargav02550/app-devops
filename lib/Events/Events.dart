import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:thub/Events/7thanv.dart';
import 'package:thub/Prog.dart';
import 'package:thub/Events/Skill.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
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
              title: Text("Are You Sure ?"),
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
                          backgroundColor: Colors.green[400],
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
          backgroundColor: Colors.lightBlue[100],
          title: Image.asset('images/Techo.png',
              fit: BoxFit.cover, height: 35.00, width: 200.00),
          centerTitle: true,
        ),
        body: Center(
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
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
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
                        'images/skdayselfie.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/skday1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/progday1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/botchal.png'),
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
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10.0,
                          spreadRadius: 0.5,
                        ),
                      ],
                      image: const DecorationImage(
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
                      MaterialPageRoute(builder: (context) => const Anv()));
                },
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10.0,
                          spreadRadius: 0.5,
                        ),
                      ],
                      image: const DecorationImage(
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
              const SizedBox(
                height: 5,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10.0,
                          spreadRadius: 0.5,
                        ),
                      ],
                      image: const DecorationImage(
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
    );
  }
}
