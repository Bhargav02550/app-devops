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
        backgroundColor: Colors.teal,
        elevation: 0,
        centerTitle: true,
        title: const Text('T - CONNECT'),
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
                    color: Colors.teal,
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
                              'T - CONNECT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 5, top: 5, bottom: 5),
                            child: Text(
                              'T-Connect is a technical hub dedicated to providing students with up-to-date knowledge and skills in the field of new technologies. Its main goal is to bridge the gap between the rapidly evolving technological landscape and the knowledge base of students.Showing a brief note about those technologies by stalls. Some of the growing technologies are presnted below',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          // child: Image.asset(
                          //   'images/RHN1.png',
                          //   fit: BoxFit.contain,
                          //   colorBlendMode: BlendMode.xor,
                          // ),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                image: AssetImage('images/red2.png'),
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
                                          'images/REDHAT.png',
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
                                          'Red Hat Linux',
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 30,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/codemind.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Codem.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Codemind',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/oracle.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/OracleAca.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Oracle',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Sales.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Salseforce',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                image: AssetImage('images/devo.png'),
                                fit: BoxFit.fitHeight,
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
                                      MediaQuery.of(context).size.height * 0.7,
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
                                          'images/DEVOP.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'DevOps',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/cis.png'),
                                  fit: BoxFit.fitHeight)),
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
                                      MediaQuery.of(context).size.height / 1.5,
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
                                          'images/CISCO.png',
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
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/cyber.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Cybersec.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Cyber Security',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  fit: BoxFit.fitHeight)),
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
                                          'images/pega.png',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/Full stack.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/FILL.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Full Stack',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/RPA.jpg'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/auto.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Automation',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/IOT.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Internet.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'IOT - Internet Of Things',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/AI ML.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/AI-ML.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Machine Learning',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/AR VR.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/gaming.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'AR & VR',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                                          'Augmented reality (AR) is an interactive experience that combines the real world and computer-generated content. The content can span multiple sensory modalities, including visual, auditory, haptic, somatosensory and olfactory.',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/3D Modeling.png'),
                                  fit: BoxFit.fitHeight)),
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
                                              color: Colors.teal,
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
                                          '3D printing or additive manufacturing is the construction of a three-dimensional object from a CAD model or a digital 3D model.[1] It can be done in a variety of processes in which material is deposited, joined or solidified under computer control.',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/Coding.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Codei.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Coding',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                                          'Coding indicates making programming code for the computer. In an increasingly broad sense, the word coding is utilized to select out a code or categorize it. Coding is the thing that makes it feasible for us to make personal computer programming, applications, and sites.',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/Placements.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Placement.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Placements',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                                          'Technicalhub had been immensively working on placements for providing average package of 10LPA for every student who are under their premises.Conducting various programs like Owlcoder,Ignitecoder,DriveReady and many to develop technical skills of every individual.',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/mabbu.jpg'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Cloud.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Cloud',
                                          style: TextStyle(
                                              color: Colors.teal,
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
                                          'Cloud computing is on-demand access, via the internet, to computing resources—applications, servers (physical servers and virtual servers), data storage, development tools, networking capabilities, and more—hosted at a remote data center managed by a cloud services provider (or CSP).',
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
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          //child: Text('$wi'),
                          height: hi * 0.13,
                          width: wi * 0.27,
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
                                  image: AssetImage('images/Drone.png'),
                                  fit: BoxFit.fitHeight)),
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
                                          'images/Drones.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Drones',
                                          style: TextStyle(
                                              color: Colors.teal,
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
