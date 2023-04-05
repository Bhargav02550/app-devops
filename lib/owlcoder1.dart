import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homeowl extends StatefulWidget {
  @override
  _HomeowlState createState() => _HomeowlState();
}

class _HomeowlState extends State<Homeowl> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("images/Owlcoder2.0vid.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Owl Coder",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Color.fromARGB(255, 102, 52, 127),
      ),
      body: Container(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: FlickVideoPlayer(
                flickManager: flickManager,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: w / 9, right: w / 9),
            child: Text(
              "Owl coder is an Innovative Training Program of 60 days which enhances trainees on Coding skills like Data Structures and Algorithms, Problem solving skills, Aptitude, Reasoning and Soft skills. ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          // Divider(height: 10,thickness: 3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: const <Widget>[
                SizedBox(height: 20.0),
                ExpansionTile(
                  title: Text(
                    "Syllabus ",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ExpansionTile(
                      title: Text('Competative Coding'),
                      children: <Widget>[
                        ListTile(
                          title: Text("Optimization of code"),
                        ),
                        ListTile(
                          title: Text("Bit Magic"),
                        ),
                        ListTile(
                          title: Text("DSA"),
                        ),
                        ListTile(
                          title: Text("Graph and its Techniques"),
                        ),
                        ListTile(
                          title: Text("Dynamic Programming"),
                        )
                      ],
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
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple,
                      ),
                    ]),
                child: Text(
                  "Trainers",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: w / 3,
                        height: h / 7,
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
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 3,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  child: Image.asset("images/ashoksir.png",
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ],
                          ),
                          back: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.purple,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: h / 27),
                                child: Text(
                                  'Mr.Ashok Competative Coding Trainer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
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
                SizedBox(
                  width: w / 8,
                ),
                Container(
                  width: w / 3,
                  height: h / 7,
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
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 10.0,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            child: Image.asset("images/kiransir.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: h / 25),
                          child: Text(
                            'Mr.Kiran \n SoftSkills Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
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
          SizedBox(
            height: h / 20,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: w / 3,
                            height: h / 7,
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
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 20.0,
                                          spreadRadius: 3,
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      child: Image.asset(
                                          "images/rajachowsir.png",
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ],
                              ),
                              back: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.purple,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: h / 25),
                                    child: Text(
                                      'Mr.Raja Chowdary \nSoftSkills Trainer',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
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
                SizedBox(
                  width: w / 8,
                ),
                Container(
                  width: w / 3,
                  height: h / 7,
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
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 20.0,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            child: Image.asset("images/siddqsir.jpg",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: h / 25),
                          child: Text(
                            'Mr.Siddq \n Aptitude Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
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
          SizedBox(
            height: h / 20,
          ),
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: w / 3,
                    height: h / 7,
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
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 20.0,
                                  spreadRadius: 3,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              child: Image.asset("images/bharathsir.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      back: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.purple,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: h / 25),
                            child: Text(
                              'Mr Bharath \nAptitude Trainer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
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
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
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
                  Image.asset('images/owlcoder3.1.png', fit: BoxFit.fill),
                  Image.asset('images/owlcoder34.png', fit: BoxFit.fill),
                  Image.asset('images/owlcoder32.png', fit: BoxFit.fill),
                  Image.asset('images/Owlcoder.33.png', fit: BoxFit.fill),
                  Image.asset('images/owlcoder32.png', fit: BoxFit.fill),
                  Image.asset('images/owlcoder12.png', fit: BoxFit.fill),
                  Image.asset('images/owlcoder31.png', fit: BoxFit.fill),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Image.asset(
                  "images/gfg logo 2.webp",
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
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Image.asset(
                  "images/leetcode.png",
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
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              FloatingActionButton.small(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: Image.asset(
                  "images/codechef.png",
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
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.pink], stops: [0.1, 0.5]),
                borderRadius: BorderRadius.circular(70),
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
                      child: Image.asset("images/BO.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Text(
                    "   Owl Coder Badge1 \n Completed By 270 Owls",
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
                borderRadius: BorderRadius.circular(70),
                gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(255, 203, 13, 220)],
                    stops: [0.1, 0.5]),
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
                      child: Image.asset("images/HO.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Container(
                    child: Text(
                      "   Owl Coder Badge2 \n Completed By 170 Owls",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
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
                borderRadius: BorderRadius.circular(70),
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.teal], stops: [0.1, 0.5]),
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
                      child: Image.asset("images/GH.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Container(
                    child: Text(
                      "   Owl Coder Badge4 \n Completed By 80 Owls",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
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
                borderRadius: BorderRadius.circular(70),
                gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(255, 79, 84, 153)],
                    stops: [0.1, 0.5]),
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
                      child: Image.asset("images/GO.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Text(
                    "   Owl Coder Badge3 \n Completed By 36 Owls",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
