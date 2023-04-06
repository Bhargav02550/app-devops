import 'package:carousel_slider/carousel_slider.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Owl extends StatefulWidget {
  const Owl({super.key});

  @override
  State<Owl> createState() => _OwlState();
}

class _OwlState extends State<Owl> {
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
    double pd = w * 0.05;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Owl Coder",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 102, 52, 127),
      ),
      body: ListView(
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
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(
                left: pd, right: pd, top: pd - 10, bottom: pd - 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 198, 107, 214),
              ),
              child: Padding(
                // padding: EdgeInsets.only(
                //     left: w / 12, right: w / 12, top: w / 20, bottom: w / 20),
                padding: EdgeInsets.all(20),
                child: const Text(
                  "Owl coder is an Innovative Training Program of 60 days which enhances trainees on Coding skills like Data Structures and Algorithms, Problem solving skills, Aptitude, Reasoning and Soft skills. ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          Divider(height: 10, thickness: 3),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple, width: 3)),
            child: const Text(
              "Badges",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.black, Colors.pink], stops: [0.1, 0.5]),
                borderRadius: BorderRadius.circular(70),
                boxShadow: const [
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
                  const Text(
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
                gradient: const LinearGradient(
                    colors: [Colors.black, Color.fromARGB(255, 203, 13, 220)],
                    stops: [0.1, 0.5]),
                boxShadow: const [
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
                    child: const Text(
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
                gradient: const LinearGradient(
                    colors: [Colors.black, Colors.teal], stops: [0.1, 0.5]),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                      height: 200,
                      width: 100,
                      child: Image.asset("images/GH.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  const Text(
                    "   Owl Coder Badge4 \n Completed By 80 Owls",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
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
                gradient: const LinearGradient(
                    colors: [Colors.black, Color.fromARGB(255, 79, 84, 153)],
                    stops: [0.1, 0.5]),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.teal,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                      height: 200,
                      width: 100,
                      child: Image.asset("images/GO.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  const Text(
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
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple, width: 3)),
            child: const Text(
              "Trainers",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.purple,
                        ],
                        stops: [
                          0.2,
                          0.9,
                        ],
                      )),
                  height: h / 7,
                  width: w / 1.2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                              image: AssetImage('images/ashoksir.png')),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Mr.Ashok',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Competative Programming\n                 Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.purple,
                          Color.fromARGB(255, 0, 0, 0),
                        ],
                        stops: [
                          0.2,
                          0.9,
                        ],
                      )),
                  height: h / 7,
                  width: w / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            ' Mr.Kiran',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'SoftSkills Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                      SizedBox(
                        width: w / 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                              image: AssetImage('images/kiransir.png'),
                              alignment: Alignment(0, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.purple,
                        ],
                        stops: [
                          0.2,
                          0.9,
                        ],
                      )),
                  height: h / 7,
                  width: w / 1.2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                              image: AssetImage('images/rajachowsir.png')),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Mr.Raja Chowdary',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'SoftSkills Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.purple,
                          Color.fromARGB(255, 0, 0, 0),
                        ],
                        stops: [
                          0.2,
                          0.9,
                        ],
                      )),
                  height: h / 7,
                  width: w / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            ' Mr.Siddq',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Aptitude Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                      SizedBox(
                        width: w / 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                            image: AssetImage('images/siddqsir.jpg'),
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.purple,
                        ],
                        stops: [
                          0.2,
                          0.9,
                        ],
                      )),
                  height: h / 7,
                  width: w / 1.2,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: const Image(
                              image: AssetImage('images/bharathsir.png')),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Mr.Bharath',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Apptitude Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.purple, width: 3)),
            child: const Text(
              "No.of problems Submitted",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
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
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
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
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
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
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
