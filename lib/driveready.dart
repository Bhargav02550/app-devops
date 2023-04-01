import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flip_card/flip_card.dart';

class Drive extends StatefulWidget {
  @override
  _DriveState createState() => _DriveState();
}

class _DriveState extends State<Drive> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.asset("images/TCV.mp4");
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
                child: Column(children: [
              Container(
                color: Colors.grey,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.pause();
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.brown[800],
                    ),
                    Text(
                      "Drive Ready",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              ),
              Container(
                  child: VideoProgressIndicator(controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        backgroundColor: Colors.white,
                        playedColor: Colors.red,
                      ))),
              Container(
                color: Colors.grey[300],
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (controller.value.isPlaying) {
                            controller.pause();
                          } else {
                            controller.play();
                          }

                          setState(() {});
                        },
                        icon: Icon(controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow)),
                    IconButton(
                        onPressed: () {
                          controller.seekTo(Duration(seconds: 0));

                          setState(() {});
                        },
                        icon: Icon(Icons.stop))
                  ],
                ),
              )
            ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: const <Widget>[
                  SizedBox(height: 20.0),
                  ExpansionTile(
                    title: Text(
                      "T-SHAPED ENGINEER",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                            'Our main objective is to turn "T-shaped" into a metaphor used to describe an ideal engineer. This program is an active part of an individual four-year engineering course, and shall surely make every participating individual ready for recruitment'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: const <Widget>[
                  SizedBox(height: 20.0),
                  ExpansionTile(
                    title: Text(
                      "Drive Ready",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                            'Technical Hub organizes various training and skill enhancement programs that focus on keeping individuals up to date on several types of technology. The drive ready program is one such program that is explicitly designed to help students secure a job by widening their technical knowledge and skills in various ways.'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: const <Widget>[
                  SizedBox(height: 20.0),
                  ExpansionTile(
                    title: Text(
                      "Key Points",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text("Coding"),
                      ),
                      ListTile(
                        title: Text("Technology Specialization"),
                      ),
                      ListTile(
                        title: Text("Resume Building"),
                      ),
                      ListTile(
                        title: Text("Project"),
                      ),
                      ListTile(
                        title: Text("Mock Interviews"),
                      ),
                      ListTile(
                        title: Text("Certifications"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: const <Widget>[
                  SizedBox(height: 20.0),
                  ExpansionTile(
                    title: Text(
                      "Courses",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Python + Machine Learning",
                        ),
                      ),
                      ListTile(
                        title: Text("Python + Internet Of Things"),
                      ),
                      ListTile(
                        title: Text("Python + Cyber Security"),
                      ),
                      ListTile(
                        title: Text("Python + DevOps"),
                      ),
                      ListTile(
                        title: Text("Java +Mean Stack"),
                      ),
                      ListTile(
                        title: Text("Java + Robotic Process"),
                      ),
                      ListTile(
                        title: Text("TSE SDE"),
                      ),
                      ListTile(
                        title: Text("TSE INFRA"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Trainers",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 20.0,
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "assets/rajeshsir.jpg",
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mr.Rajesh',
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
                  SizedBox(
                    width: 40,
                  ),
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 20.0,
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        child: Image.asset(
                                            "assets/sudhirsir.jpg",
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Mr.Sudhir',
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Images",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  )),
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
                        autoplay: false,
                        images: [
                          Image.asset(
                            'assets/driveready/7.jpg',
                            fit: BoxFit.fill,
                          ),
                          Image.asset('assets/driveready/14.jpg',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/18.jpg',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/DSC_4891.JPG',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/DSC_6366.JPG',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/DSC_6379.JPG',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/DSC_6391.JPG',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/DSC_6430.JPG',
                              fit: BoxFit.fill),
                          Image.asset('assets/driveready/DSC_6433.JPG',
                              fit: BoxFit.fill),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
