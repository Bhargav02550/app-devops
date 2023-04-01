import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';
import 'Coding.dart';

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
          VideoPlayerController.asset("images/Codemindv.mp4"),
    );
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
    double pd = wid * 0.05;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Codemind",
          style: TextStyle(color: Colors.deepPurple),
        ),
        backgroundColor: Colors.pinkAccent,
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
            Container(
              child: Text(
                  "Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive secenario based learning modules are designed to help a student look at a problem in a life like perspective. We stongly believe that every mind isn't alike, and therefore we give the student a chace to express their opinion rather than trying to abide by a generalized one. The platform also guides students on how they should proceed with their goals and helps them prepare for their dream job in a personalized way.",
                  style: TextStyle(color: Colors.green, fontSize: 16)),
              padding: EdgeInsets.all(20),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Center(
                  child: Container(
                    height: 250,
                    width: wid * (0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/Coding.png'),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const code(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Center(
                  child: Container(
                    height: 250,
                    width: wid * (0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/Aptitude.png'),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Apt(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Center(
                  child: Container(
                    height: 250,
                    width: wid * (0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/Resoning.png'),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Reso(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Center(
                  child: Container(
                    height: 250,
                    width: wid * (0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/Softskills.jpg'),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Soft(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Center(
                  child: Container(
                    height: 250,
                    width: wid * (0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/Technilogies.png',
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Tech(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 5),
                child: Center(
                  child: Container(
                    height: 250,
                    width: wid * (0.8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0),
                          blurRadius: 5.0,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/Courses.png'),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const cour(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}

class code extends StatefulWidget {
  const code({super.key});

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Apt extends StatefulWidget {
  const Apt({super.key});

  @override
  State<Apt> createState() => _AptState();
}

class _AptState extends State<Apt> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Reso extends StatefulWidget {
  const Reso({super.key});

  @override
  State<Reso> createState() => _ResoState();
}

class _ResoState extends State<Reso> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Soft extends StatefulWidget {
  const Soft({super.key});

  @override
  State<Soft> createState() => _SoftState();
}

class _SoftState extends State<Soft> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Tech extends StatefulWidget {
  const Tech({super.key});

  @override
  State<Tech> createState() => _TechState();
}

class _TechState extends State<Tech> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class cour extends StatefulWidget {
  const cour({super.key});

  @override
  State<cour> createState() => _courState();
}

class _courState extends State<cour> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
