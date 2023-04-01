import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        elevation: 0,
        centerTitle: true,
        title: Text('T - CONNECT'),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: pd, right: pd, top: pd - 5, bottom: pd - 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FlickVideoPlayer(flickManager: flickManager),
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
                    color: Color.fromARGB(255, 89, 169, 212),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.88,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 10),
                            child: Text(
                              'T - CONNECT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(
                              'T-Connect is a technical hub dedicated to providing students with up-to-date knowledge and skills in the field of new technologies. Its main goal is to bridge the gap between the rapidly evolving technological landscape and the knowledge base of students.',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                //fontFamily: 'IP',
                                //fontWeight: FontWeight,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          // child: Image.asset(
                          //   'images/RHN1.png',
                          //   fit: BoxFit.contain,
                          //   colorBlendMode: BlendMode.xor,
                          // ),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
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
                                image: AssetImage('images/RHN2.jpg'),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/RHN1.jpeg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Red Hat Linux',
                                          style: TextStyle(
                                              color: Colors.red[900],
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Red Hat, Inc. is an American software company that provides open source software products to enterprises and is a subsidiary of IBM. Founded in 1993, Red Hat has its corporate headquarters in Raleigh, North Carolina, with other offices worldwide.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 15,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/codemind.png'))),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/CO.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Codemind',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.pinkAccent,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive scenario based learning modules are designed to help a student look at a problem in a life like perspective. We strongly believe that every mind isn’t alike, and therefore we give the student a chance to express their opinion rather than trying to abide by a generalized one.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 15,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/cisco1.png'),
                                  fit: BoxFit.fill)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/cisco2.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Cisco',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Color.fromARGB(
                                                  255, 17, 197, 229),
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Cisco Systems, Inc., commonly known as Cisco, is an American-based multinational digital communications technology conglomerate corporation headquartered in San Jose, California. Cisco develops, manufactures, and sells networking hardware, software, telecommunications equipment and other high-technology services and products.',
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
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 15,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/RPA.png'))),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/AUTO.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Automation',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 243, 108, 12),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Automation Anywhere was originally founded as Tethys Solutions, LLC[2] in San Jose, by Mihir Shukla, Neeti Mehta Shukla, Ankur Kothari and Rushabh Parmani. The company rebranded itself as Automation Anywhere, Inc. in 2010',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 5.0,
                                  blurRadius: 15,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('images/DevOps.jpg'),
                                fit: BoxFit.fill,
                              )),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/devop.jpeg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'DevOps',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 200, 222, 101),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'DevOps is a methodology in the software development and IT industry. Used as a set of practices and tools, DevOps integrates and automates the work of software development (Dev) and IT operations (Ops) as a means for improving and shortening the systems development life cycle.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/fullstack.png'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/full.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Full Stack',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 24, 18, 95),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Full stack web Developers: Full stack web developers have the ability to design complete web applications and websites. They work on the frontend, backend, database and debugging of web applications or websites.',
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
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/CS.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/CS2.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Cyber Security',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 4, 29, 96),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Cyber security refers to every aspect of protecting an organization and its employees and assets against cyber threats. As cyberattacks become more common and sophisticated and corporate networks grow more complex, a variety of cyber security solutions are required to mitigate corporate cyber risk.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/PG.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/PG2.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'PEGA',
                                          style: TextStyle(
                                              color: Colors.teal[500],
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Pegasystems Inc. is an American software company based in Cambridge, Massachusetts.[4] Founded in 1983, Pegasystems develops software for customer relationship management (CRM) and business process management (BPM).[5][6] The company has been publicly traded since 1996 as PEGA (NASDAQ).',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/OA.png'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/OA2.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Oracle',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 204, 62, 6),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Oracle Corporation is an American multinational computer technology corporation headquartered in Austin, Texas.[5] In 2020, Oracle was the third-largest software company in the world by revenue and market capitalization.[6] The company sells database software and technology (particularly its own brands), cloud engineered systems, and enterprise software products.',
                                          style: TextStyle(
                                            fontSize: 14,
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
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/SF2.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/SF3.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Salseforce',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 14, 185, 232),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Salesforce, Inc. is an American cloud-based software company headquartered in San Francisco, California. It provides customer relationship management (CRM) software and applications focused on sales, customer service, marketing automation, e-commerce, analytics, and application development.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/IOT.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/IOT2.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'IOT - Internet Of Things',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 24, 119, 11),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'The Internet of Things (IoT) describes the network of physical objects—“things”—that are embedded with sensors, software, and other technologies for the purpose of connecting and exchanging data with other devices and systems over the internet.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/ML.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/ML2.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Machine Learning',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 110, 147, 163),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Machine learning (ML) is a field of inquiry devoted to understanding and building methods that "learn" – that is, methods that leverage data to improve performance on some set of tasks.It is seen as a part of artificial intelligence.',
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
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/ARVR.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/IOT2.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'AR & VR',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 180, 35, 165),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'The Internet of Things (IoT) describes the network of physical objects—“things”—that are embedded with sensors, software, and other technologies for the purpose of connecting and exchanging data with other devices and systems over the internet.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/3D.jpg'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/3D.jpg',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          '3D Printing',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 228, 152, 0),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'The Internet of Things (IoT) describes the network of physical objects—“things”—that are embedded with sensors, software, and other technologies for the purpose of connecting and exchanging data with other devices and systems over the internet.',
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
                        padding: const EdgeInsets.only(left: 11, right: 15),
                        child: Container(
                          //child: Text('$wi'),
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2431,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  spreadRadius: 10.0,
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('images/COD2.png'),
                                  fit: BoxFit.cover)),
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
                                      MediaQuery.of(context).size.height * 0.5,
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
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'images/COD2.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Coding',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 2, 7, 74),
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'The Internet of Things (IoT) describes the network of physical objects—“things”—that are embedded with sensors, software, and other technologies for the purpose of connecting and exchanging data with other devices and systems over the internet.',
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
      ),
      // InkWell(
      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     decoration: BoxDecoration(
      //       color: Colors.black,
      //     ),
      //   ),
      // onTap: () {
      //   showDialog(
      //     context: (context),
      //     builder: (context) {
      //       return Center(
      //         child: Material(
      //           type: MaterialType.transparency,
      //           child: Container(
      //             height: MediaQuery.of(context).size.height * 0.5,
      //             width: MediaQuery.of(context).size.width * 0.8,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             child: ClipRect(
      //               child: Image.asset(
      //                 'images/dp.png',
      //               ),
      //             ),
      //           ),
      //         ),
      //       );
      //     },
      //   );
      // },
      // ),
    );
    //);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<FlickManager>('flickManager', flickManager));
  }
}
