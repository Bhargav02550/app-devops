import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_pro/carousel_pro.dart';
//import 'comp.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flick_video_player/flick_video_player.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset("images/TCV.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    double pd = wi * 0.05;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text('Owl Coder'),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(right: pd, top: pd - 5, bottom: pd - 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FlickVideoPlayer(flickManager: flickManager),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(pd),
          child: Container(
            height: MediaQuery.of(context).size.height / 7,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  // blurRadius: 5,
                  color: Colors.black,
                ),
              ],
            ),
            child: const Text(
                "Owl coder is an Innovative Training Program of 60 days which enhances trainees on Coding skills like Data Structures and Algorithms, Problem solving skills, Aptitude, Reasoning and Soft skills. ",
                style: TextStyle(fontSize: 18, fontFamily: 'Alkatra')),
            // child: ClipRRect(
            //   child: Image.asset(
            //     'images/image1.jpg',
            //     fit: BoxFit.fill,
            //   ),
            //   borderRadius: BorderRadius.circular(10),
            // ),
          ),
        ),
        const Divider(height: 10, thickness: 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: const <Widget>[
              SizedBox(height: 20.0),
              ExpansionTile(
                title: Text(
                  "Syllabus ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('Competative Coding'),
                  ),
                  ListTile(
                    title: Text('Soft Skills'),
                  ),
                  ListTile(
                    title: Text("Aptitude And Reasoning"),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width / 12),
            Container(
              height: 30,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.lightGreen,
                    ),
                  ]),
              child: const Text(
                "Trainers",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 50,
            top: 20,
          ),
          child: Row(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          margin: EdgeInsets.only(top: 20),
                          child: FlipCard(
                            direction: FlipDirection.HORIZONTAL,
                            front: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    child: Image.asset("assets/Coding.png",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            back: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.grey,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mr.Ashok \n Competative Coding Trainer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              Container(
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 20),
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          child: Image.asset("images/Coding.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  back: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Mr.Kiran \n SoftSkills Trainer',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 50,
            top: 20,
          ),
          child: Row(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          margin: EdgeInsets.only(top: 20),
                          child: FlipCard(
                            direction: FlipDirection.HORIZONTAL,
                            front: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    child: Image.asset("images/Coding.png",
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                            back: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.grey,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Mr.Raja Chowdary \nSoftSkills Trainer',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              Container(
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 20),
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          child: Image.asset("images/Coding.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  back: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Mr.Siddq \n Aptitude Trainer',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(top: 20),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            child: Image.asset("images/Coding.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Mr Bharath \nAptitude Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width / 12),
            Container(
              height: 30,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                    ),
                  ]),
              child: const Text(
                "Images",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 270,
            width: 300,
            child: Container(
                child: ListView(
              children: [
                SizedBox(
                  height: 250.0,
                  width: 300,
                  child: Carousel(
                    dotSize: 6,
                    dotColor: Colors.white,
                    dotIncreasedColor: Colors.grey,
                    dotSpacing: 20.0,
                    dotPosition: DotPosition.bottomCenter,
                    dotBgColor: Colors.transparent,
                    autoplay: true,
                    animationDuration: const Duration(seconds: 3),
                    autoplayDuration: const Duration(seconds: 3),
                    images: [
                      Image.asset(
                        'assets/owl coder 1.png',
                        fit: BoxFit.fill,
                      ),
                      Image.asset('assets/owlcoder3.1.png', fit: BoxFit.fill),
                      Image.asset('assets/owlcoder34.png', fit: BoxFit.fill),
                      Image.asset('assets/owlcoder32.png', fit: BoxFit.fill),
                      Image.asset('assets/Owlcoder.33.png', fit: BoxFit.fill),
                      Image.asset('assets/owlcoder32.png', fit: BoxFit.fill),
                      Image.asset('assets/owlcoder12.png', fit: BoxFit.fill),
                      Image.asset('assets/owlcoder31.png', fit: BoxFit.fill),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width / 12),
            Container(
              height: 30,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent,
                    ),
                  ]),
              child: Text(
                "No of problems Submitted",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Divider(
          height: 20,
          thickness: 3,
          color: Colors.green,
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: 20),
              FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Image.asset(
                  "assets/gfg logo 2.webp",
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Geeks for Geeks ",
                      style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 12,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "54928+ submissions ",
                      style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: 20),
              FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Image.asset(
                  "assets/leetcode.png",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "  Leetcode",
                  style: TextStyle(
                      color: Colors.orange[400],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 6,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "45368+ submissions ",
                  style: TextStyle(
                      color: Colors.orange[400],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              SizedBox(width: 20),
              FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Image.asset(
                  "assets/codechef.png",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "   CodeChef",
                  style: TextStyle(
                      color: Colors.brown[700],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 6,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "36313+ submissions ",
                  style: TextStyle(
                      color: Colors.brown[700],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width / 12),
            Container(
              height: 30,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple,
                    ),
                  ]),
              child: Text(
                "Badges",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.5,
                  0.9,
                ],
                colors: [
                  Colors.pinkAccent,
                  Colors.black,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.purpleAccent,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                    height: 200,
                    width: 100,
                    child: Image.asset(
                      "images/BO.png",
                      fit: BoxFit.fill,
                    )),
                SizedBox(width: MediaQuery.of(context).size.width / 8),
                Text(
                  "   Owl Coder Badge 1 \n Completed By 270 Owls",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.5,
                  0.9,
                ],
                colors: [
                  Colors.purple,
                  Colors.black,
                ],
              ),
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                    height: 200,
                    width: 100,
                    child: Image.asset(
                      "images/HO.png",
                      fit: BoxFit.fill,
                    )),
                SizedBox(width: MediaQuery.of(context).size.width / 8),
                Text(
                  "   Owl Coder Badge 2 \n Completed By 170 Owls",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.5,
                  0.9,
                ],
                colors: [
                  Colors.teal,
                  Colors.black,
                ],
              ),
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.teal,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                    height: 200,
                    width: 100,
                    child: Image.asset(
                      "images/GH.png",
                      fit: BoxFit.fill,
                    )),
                SizedBox(width: MediaQuery.of(context).size.width / 8),
                Text(
                  "   Owl Coder Badge 3 \n Completed By 80 Owls",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.5,
                  0.9,
                ],
                colors: [
                  Colors.blueGrey,
                  Colors.black,
                ],
              ),
              borderRadius: BorderRadius.circular(70),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/GO.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 8),
                Text(
                  "   Owl Coder Badge 4 \n Completed By 36 Owls",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
