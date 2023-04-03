import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:thub/bottom.dart';
import 'package:video_player/video_player.dart';

class CMpage extends StatefulWidget {
  const CMpage({Key? key}) : super(key: key);

  @override
  State<CMpage> createState() => _CMpageState();
}

class _CMpageState extends State<CMpage> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset('images/Codemindv.mp4'));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hig = MediaQuery.of(context).size.height / 3.4;
    double wi = MediaQuery.of(context).size.width;
    double pd = wi * 0.05;
    double podugu =
        MediaQuery.of(context).size.height / 4 - (wid / 10.18518518518519);
    double baru =
        MediaQuery.of(context).size.width / 2 - (wid / 10.18518518518519);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Codemind",
          style: TextStyle(color: Color.fromARGB(255, 240, 240, 240)),
        ),
        backgroundColor: Color.fromARGB(255, 234, 105, 150),
      ),
      body: Container(
        child: Center(
            child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: pd, right: pd, top: pd - 5, bottom: pd - 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: pd, right: pd, top: pd - 5, bottom: pd - 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 234, 105, 150),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive secenario based learning modules are designed to help a student look at a problem in a life like perspective. We stongly believe that every mind isn't alike, and therefore we give the student a chace to express their opinion rather than trying to abide by a generalized one.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontStyle: FontStyle.italic)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 15),
                          child: Container(
                            height: podugu,
                            width: baru,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 20,
                                ),
                              ],
                              image: const DecorationImage(
                                  image: AssetImage('images/Code.png'),
                                  alignment: Alignment(0.3, 0),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: (context),
                            builder: (context) {
                              return Center(
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        100,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/hand-coding-concept-illustration_114360-8113.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Coding',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Alkatra'),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "Coding is the process of creating instructions in a programming language that a computer can understand and execute.\nOur distinctive approach to teaching is guaranteed to keep you entertained.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 0),
                          child: Container(
                            height: podugu,
                            width: baru,
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 20,
                                ),
                              ],
                              image: const DecorationImage(
                                  image: AssetImage('images/IMG1.png'),
                                  alignment: Alignment(0.3, 0),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: (context),
                            builder: (context) {
                              return Center(
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        100,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/Untitled.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Aptitude',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Alkatra'),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "We have various topics to learn like Number Series, Coding & Decoding, Letter Series, and so goes the list.\nIn our platform you can take a competitor test or an experimenter test.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 15),
                          child: Container(
                            height: podugu,
                            width: baru,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 20,
                                ),
                              ],
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'images/project_20230401_1937501-01.png'),
                                  alignment: Alignment(0.3, 0),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: (context),
                            builder: (context) {
                              return Center(
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        100,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/Untitled1.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Reasoning',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Alkatra'),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "We have various topics to learn like Analogy, Blood Relations, and so goes the list.\nIn our platform you can take a competitor test or an experimenter test.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 0),
                          child: Container(
                            height: podugu,
                            width: baru,
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 20,
                                ),
                              ],
                              image: const DecorationImage(
                                  image: AssetImage('images/3.png'),
                                  alignment: Alignment(0.3, 0),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: (context),
                            builder: (context) {
                              return Center(
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        100,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/test.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Soft Skills',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Alkatra'),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "Put your learning skills to the test with out course aligned quizzes.\nYou can take test on various courses based on soft skills like Verbal Ability.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, right: 15),
                          child: Container(
                            height: podugu,
                            width: baru,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 20,
                                ),
                              ],
                              image: const DecorationImage(
                                  image: AssetImage('images/tech.png'),
                                  alignment: Alignment(0.3, 0),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: (context),
                            builder: (context) {
                              return Center(
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        100,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/Technologies.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Technologies',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 40,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Alkatra'),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "Our technology specific courses are here to help you change the world one step at a time.\nWe are providing 4th industrial revolution with our industry oriented courses.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 0),
                          child: Container(
                            height: podugu,
                            width: baru,
                            decoration: BoxDecoration(
                              //shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 20,
                                ),
                              ],
                              image: const DecorationImage(
                                  image: AssetImage('images/IMG2.png'),
                                  alignment: Alignment(0.3, 0),
                                  fit: BoxFit.fitHeight),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: (context),
                            builder: (context) {
                              return Center(
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                            0.7 -
                                        80,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/IMG2.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Courses',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Alkatra'),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "We have wide range of story based leraning modules that are designed to be fun and educative.\nOur interactive learning modules will help you to get a insightful overview of the subject.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
