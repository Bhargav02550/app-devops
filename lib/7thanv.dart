import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flip_card/flip_card.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class Anv extends StatefulWidget {
  const Anv({Key? key}) : super(key: key);

  @override
  State<Anv> createState() => _AnvState();
}

class _AnvState extends State<Anv> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("images/7thanvid.mp4"));
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
        backgroundColor: Colors.teal,
        actions: [
          Image.asset("images/Techo.png"),
          SizedBox(
            width: 100,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(w / 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                left: w / 15,
                right: w / 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[100],
                    border: Border.all(
                      color: Colors.greenAccent,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Seven Years, Technical-Hub has been a innovation, progress, and excellence in the field of Computer Technology Technical Hub, a institution is known for it's cutting-edge research om fields like Technologies such as ,coding weeb development, cloud computing , AI's etc ..., Our commitment to pushing the boundaries of techology for Students. ",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, top: 20, right: w / 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.teal,
                    )),
                child: Text(
                  " On The Day Of  7th Aniversery :",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15),
              child: Container(
                child: Text(
                  "T-Awards 2023: ",
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Best TechCoach :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG-20230406-WA0022.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Best Developer :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/bestdeveloper.JPG"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Star Of The Year :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG-20230406-WA0034.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Beyond The Call Of Duty :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG-20230406-WA0026.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Emerging Tech:",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG-20230406-WA0024.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Coder Of The Year :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG-20230406-WA0027.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Trainee Of The Year :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/tranieeoftheyear.JPG"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: w / 12),
              child: Container(
                  child: Text(
                "Topper Of The CodeMind :",
                style: TextStyle(
                    color: Colors.green[600], fontWeight: FontWeight.w500),
              )),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/IMG-20230406-WA0028.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, bottom: 10),
              child: Container(
                child: Text(
                  "Coding Contest Winners: ",
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: w / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/IMG-20230406-WA0032.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: w / 20,
                ),
                Container(
                  height: 100,
                  width: w / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/IMG-20230406-WA0033.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: w / 20,
                ),
                Container(
                  height: 100,
                  width: w / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/IMG-20230406-WA0025.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, top: 10),
              child: Container(
                child: Text(
                  "Event Moments: ",
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
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
                    Image.asset('images/IMG-20230406-WA0030(1).jpg',
                        fit: BoxFit.fill),
                    Image.asset('images/IMG-20230406-WA0023.jpg',
                        fit: BoxFit.fill),
                    Image.asset('images/IMG-20230406-WA0021.jpg',
                        fit: BoxFit.fill),
                    Image.asset('images/interns.png', fit: BoxFit.fill),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
