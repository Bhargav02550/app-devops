import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';

class Mpage extends StatefulWidget {
  const Mpage({Key? key}) : super(key: key);
  @override
  State<Mpage> createState() => _MpageState();
}

class _MpageState extends State<Mpage> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.asset('images/COV.mp4'));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double pd = wi * 0.05;
    double wid = MediaQuery.of(context).size.width;
    double hig = MediaQuery.of(context).size.height / 3.4;
    double podugu =
        MediaQuery.of(context).size.height / 4 - (wid / 10.18518518518519);
    double baru =
        MediaQuery.of(context).size.width / 2 - (wid / 10.18518518518519);
    double lowid = MediaQuery.of(context).size.width * 0.8;
    double lohig = (MediaQuery.of(context).size.height / 3.4) * 0.7;
    double lopodugu = lohig / 2 - /*(lowid/25.46296296296249)*/ 0;
    double lobaru = lowid / 2 - /*(lowid/25.46296296296249)*/ 10;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink[300],
          centerTitle: true,
          title: const Text(
            "Codemind",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          )),
      body: Center(
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
        Column(
          children: [
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: pd, right: pd, top: pd - 10, bottom: pd - 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[200],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      spreadRadius: 0.1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.88,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 10),
                          child: Text(
                            'Codemind',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: 5, top: 5, bottom: 10),
                          child: Text(
                            "Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive secenario based learning modules are designed to help a student look at a problem in a life like perspective. We stongly believe that every mind isn't alike, and therefore we give the student a chace to express their opinion rather than trying to abide by a generalized one.",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              //fontFamily: 'IP',
                              //fontWeight: FontWeight,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          Column(children: [
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
                                height:
                                    MediaQuery.of(context).size.height * 0.7 -
                                        100,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListView(
                                  children: [
                                    Column(
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
                                        const Padding(
                                          padding: EdgeInsets.only(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.7 -
                                        100,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListView(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/Apt.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
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
            const SizedBox(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.7 -
                                        100,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListView(
                                  children: [
                                    Column(
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
                                        const Padding(
                                          padding: EdgeInsets.only(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.7 -
                                        100,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListView(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/soso.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
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
            const SizedBox(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListView(children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/te.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
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
                                          "Our technology specific courses are here to help you change the world one step at a time.\nWe are providing 4th industrial revolution with our industry oriented courses.\n\nTechnologies availabel",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/RPA.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Cyber Security.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Cloud Comuting.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/AI.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/IoTc.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/AR.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/VR.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Block Chain.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/devopsc.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Networking.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Saclseforce.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/3D.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 20,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Testing.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Container(
                                                  height: lopodugu,
                                                  width: lobaru,
                                                  decoration: BoxDecoration(
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color: Color.fromARGB(
                                                            31, 0, 0, 0),
                                                        spreadRadius: 5.0,
                                                        blurRadius: 10,
                                                      ),
                                                    ],
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            'images/Big Data.png'),
                                                        alignment:
                                                            Alignment(0.1, 0),
                                                        fit: BoxFit.fitHeight),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                width: MediaQuery.of(context).size.width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListView(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            'images/core.png',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
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
                                            "We have wide range of story based leraning modules that are designed to be fun and educative.Our interactive learning modules will help you to get a insightful overview of the subject.\n\nCourese availabel",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/AI.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/AngularJS.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Arduino Fundamentals Certification.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/AutoCAD.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Augmented Reality.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Automation Anywhere.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Azure.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Basic Electronic Devices and Circuits.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Basics of Etectrical.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Blender.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/CATIA.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Cloud Computing.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Cloud Security.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Computer Hardware.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Cyber Security.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Digital Forensics.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/HTML & CSS.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Industrial Automation.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/IoTc.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/IoT Security.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/JavaScript.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Master.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Mechanics of Solids.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/ML.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/MongoDB.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Network Security.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/OS.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Photoshop.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Production Technolody.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/React JS.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Revit MEP.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/ROBOTICS.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Robotics Animatronics.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/RPA.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Unity Artist.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Unity Associate.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Unity Dev.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Unity VR Developer.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Unity with C Sharp.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Industrial Automation.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 20,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/VR.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Container(
                                                    height: lopodugu,
                                                    width: lobaru,
                                                    decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                              31, 0, 0, 0),
                                                          spreadRadius: 5.0,
                                                          blurRadius: 10,
                                                        ),
                                                      ],
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "images/Web.png"),
                                                          alignment:
                                                              Alignment(0.1, 0),
                                                          fit:
                                                              BoxFit.fitHeight),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
            const Divider(
              thickness: 2,
            ),
            Container(
              width: wid,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 3,
                  )
                  //color: Colors.pinkAccent,
                  ),
              child: const Center(
                  child: Text("Belts",
                      style:
                          TextStyle(color: Colors.pinkAccent, fontSize: 20))),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 250.0,
                width: 300,
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
                    scrollDirection: Axis.vertical,
                  ),
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/100.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/200.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/300.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/400.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/500.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/600.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/700.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/800.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/900.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/1000.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      )],),
    ),
    );
  }
}
