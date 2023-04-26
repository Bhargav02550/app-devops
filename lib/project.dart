import 'package:carousel_slider/carousel_slider.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Know extends StatefulWidget {
  const Know({Key? key}) : super(key: key);

  @override
  State<Know> createState() => _KnowState();
}

class _KnowState extends State<Know> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        autoPlay: false,
        videoPlayerController: VideoPlayerController.asset('images/project.mp4',
            videoPlayerOptions:
                VideoPlayerOptions(allowBackgroundPlayback: false)));
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
    double hi = MediaQuery.of(context).size.height;
    double podugu =
        MediaQuery.of(context).size.height / 4 - (wid / 10.18518518518519);
    double baru =
        MediaQuery.of(context).size.width / 2 - (wid / 10.18518518518519);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent.shade700,
        elevation: 5,
        shadowColor: Colors.yellow,
        title: const Text(
          "PROJECT SPACE",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FlickVideoPlayer(
                flickManager: flickManager,
              ),
            ),
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellowAccent.shade700,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 15)
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellowAccent.shade700,
                    ),
                    child: const Text(
                      "PROJECT SPACE",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    margin: const EdgeInsets.all(05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellowAccent.shade700,
                    ),
                    child: const Text(
                      "Project Space is a feature-rich environment designed to encourage individuals to develop and showcase real-time problems and further find effective solutions that can help overcome them. Every individual who chooses to utilize this space pockets themselves a chance that could possibly get them one step closer to their dream job.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: wid,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.yellowAccent.shade700,
                  width: 3,
                )
                //color: Colors.pinkAccent,
                ),
            child: Center(
                child: Text("Technologies",
                    style: TextStyle(
                        color: Colors.yellowAccent.shade700, fontSize: 20))),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                          image: AssetImage('images/logo-aiml.png'),
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
                                MediaQuery.of(context).size.height * 0.7 - 100,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/aiml.jpg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 5,
                                      bottom: 5,
                                      left: wid / 23,
                                    ),
                                    child: Text(
                                      'AI & ML',
                                      style: TextStyle(
                                        color: Colors.yellow.shade700,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, right: wid / 23),
                                    child: const Text(
                                      "Artificial intelligence (AI) is the ability of a computer program or a machine to think and learn. It is also a field of study which tries to make computers. They work on their own without being encoded with commands.\nMachine learning (ML) is a field of artificial intelligence that allows systems to learn and improve from experience without being explicitly programmed. It has become an increasingly popular topic in recent years due to the many practical applications it has in a variety of industries.",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                        left: wid / 6,
                                        bottom: 25,
                                        right: wid / 6),
                                    child: Container(
                                      height: 40,
                                      width: wid / 2,
                                      decoration: BoxDecoration(
                                          color: Colors.yellowAccent.shade700,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Center(
                                        child: Text(
                                          'PROJECTS',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: wid / 12),
                                    child: const ExpansionTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30))),
                                      collapsedShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(90),
                                        bottomRight: Radius.circular(90),
                                      )),
                                      collapsedBackgroundColor:
                                          Colors.amberAccent,
                                      backgroundColor: Colors.green,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: Text(
                                        " STOCK PREDICTION USING LSTM ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            "Investors and traders use stock prediction as a tool to help inform their investment decisions and maximize their returns. However, it is important to conduct thorough research and analysis before making any investment decisions and to always be aware of the potential risks involved in stock trading.\n\nTools used are Spyder, Jupyter,Vs code, Python Flask, Sublime\n\n",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          textColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 200),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: wid / 12),
                                        child: const ExpansionTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          iconColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30))),
                                          collapsedShape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                            topLeft: Radius.circular(90),
                                            bottomLeft: Radius.circular(90),
                                          )),
                                          textColor: Colors.white,
                                          collapsedBackgroundColor:
                                              Colors.amberAccent,
                                          backgroundColor: Colors.green,
                                          title: Text(
                                            " Online Payment Fraud Detection with CNN",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          children: <Widget>[
                                            ListTile(
                                              title: Text(
                                                "To Detect and Prevent Fraud Transition a Solution came up with MachineLearning models where the Transaction Data is Trained with ML Models and Fraud Transaction isPredicted.\n\nTools Used are Spyder, VSCode, Python, HTML, CSS\n\n",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
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
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                          image: AssetImage('images/logo-devops.png'),
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
                                MediaQuery.of(context).size.height * 0.7 - 100,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/devop.jpg',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, bottom: 5, top: 5),
                                    child: Text(
                                      'DEVOPS',
                                      style: TextStyle(
                                        color: Colors.yellow.shade700,
                                        fontSize: 40,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, right: wid / 23),
                                    child: const Text(
                                      " DevOps is a methodology in the software development and IT industry. Used as a set of practices and tools, DevOps integrates and automates the work of software development (Dev) and IT operations (Ops) as a means for improving and shortening the systems development life cycle.[1] DevOps is complementary to agile software development; several DevOps aspects came from the agile way of working",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 15,
                                      left: wid / 6,
                                      bottom: 25,
                                      right: wid / 6,
                                    ),
                                    child: Container(
                                      height: 40,
                                      width: wid / 2,
                                      decoration: BoxDecoration(
                                          color: Colors.yellowAccent.shade700,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Center(
                                        child: Text(
                                          'PROJECTS',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: wid / 12),
                                    child: const ExpansionTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30))),
                                      collapsedShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(90),
                                        bottomRight: Radius.circular(90),
                                      )),
                                      collapsedBackgroundColor:
                                          Colors.amberAccent,
                                      backgroundColor: Colors.green,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: Text(
                                        "Automate Applications Using Ansible",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            "To automate applications using Ansible, you can create playbooks, which are YAML files that define a set of tasks that should be executed on a group of hosts.By automating your applications with Ansible, you can save time and reduce the risk of errors that can occur with manual deployment and management.\n\nTools Used are Ansible,Inventory files,playbooks,Yamlfiles,Docker.\n",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          textColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 200),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: wid / 12),
                                        child: const ExpansionTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          iconColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30))),
                                          collapsedShape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                            topLeft: Radius.circular(90),
                                            bottomLeft: Radius.circular(90),
                                          )),
                                          textColor: Colors.white,
                                          collapsedBackgroundColor:
                                              Colors.amberAccent,
                                          backgroundColor: Colors.green,
                                          title: Text(
                                            "Application and Database Orchestration Using Kubernetes",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          children: <Widget>[
                                            ListTile(
                                              title: Text(
                                                "Deploying the given application in Kubernetes and monitor the cluster  and use the service mesh.Kubernetes is an open-source container orchestration platform that provides a way to deploy, manage,and scale containerized applications in a highly available and efficient manner.",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                          image: AssetImage('images/logo-fullstack.png'),
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
                                MediaQuery.of(context).size.height * 0.7 - 100,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/fsd.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 5,
                                      bottom: 5,
                                      left: wid / 23,
                                    ),
                                    child: Text(
                                      'FULLSTACK DEVELOPMENT',
                                      style: TextStyle(
                                        color: Colors.yellow.shade700,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, right: wid / 23),
                                    child: const Text(
                                      "Full stack development refers to the end-to-end application software development, including the front end and back end. The front end consists of the user interface, and the back end takes care of the business logic and application workflows.",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                        left: wid / 6,
                                        bottom: 25,
                                        right: wid / 6),
                                    child: Container(
                                      height: 40,
                                      width: wid / 2,
                                      decoration: BoxDecoration(
                                          color: Colors.yellowAccent.shade700,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Center(
                                        child: Text(
                                          'PROJECTS',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: wid / 12),
                                    child: const ExpansionTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30))),
                                      collapsedShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(90),
                                        bottomRight: Radius.circular(90),
                                      )),
                                      collapsedBackgroundColor:
                                          Colors.amberAccent,
                                      backgroundColor: Colors.green,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: Text(
                                        "ONLINE HOSTEL OUTPASS SYSTEM",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            'A hostel Outpass system is a protocol used by hostels or dormitories to regulate the movement of their residents. It typically requires residents to obtain permission from hostel authorities before leaving the premises for a specific duration of time.\nTools used are React Js included with HTML, CSS, Bootstrap for front-end purpose and Mongo DB for back-end purpose.',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          textColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 200),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: wid / 12),
                                        child: const ExpansionTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          iconColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30))),
                                          collapsedShape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                            topLeft: Radius.circular(90),
                                            bottomLeft: Radius.circular(90),
                                          )),
                                          textColor: Colors.white,
                                          collapsedBackgroundColor:
                                              Colors.amberAccent,
                                          backgroundColor: Colors.green,
                                          title: Text(
                                            "Boy and Girls Hostel Management ",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          children: <Widget>[
                                            ListTile(
                                              title: Text(
                                                  'Our main objective is to turn "T-shaped" into a metaphor used to describe an ideal engineer. This program is an active part of an individual four-year engineering course, and shall surely make every participating individual ready for recruitment'),
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
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
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                          image: AssetImage('images/logo-iot.png'),
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
                                MediaQuery.of(context).size.height * 0.7 - 100,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/iot (2).jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, bottom: 5, top: 5),
                                    child: Text(
                                      'INTERNET OF THINGS',
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade300,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, right: wid / 23),
                                    child: const Text(
                                      "The Internet of things (IoT) describes physical objects (or groups of such objects) with sensors, processing ability, software and other technologies that connect and exchange data with other devices and systems over the Internet or other communications networks.",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                        left: wid / 6,
                                        bottom: 25,
                                        right: wid / 6),
                                    child: Container(
                                      height: 40,
                                      width: wid / 2,
                                      decoration: BoxDecoration(
                                          color: Colors.yellowAccent.shade700,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Center(
                                        child: Text(
                                          'PROJECTS',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: wid / 12),
                                    child: const ExpansionTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30))),
                                      collapsedShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(90),
                                        bottomRight: Radius.circular(90),
                                      )),
                                      collapsedBackgroundColor:
                                          Colors.amberAccent,
                                      backgroundColor: Colors.green,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: Text(
                                        "The Customer Feedback Machine",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            " It is basically used for knowing the problems, suggestion, remarks and complements. This helps the companies or manufacturers to improve, upgrade and implement the suggestions given by the customers to reach and satisfy their requirements.\n\n",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          textColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 200),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: wid / 12),
                                        child: const ExpansionTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          iconColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30))),
                                          collapsedShape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                            topLeft: Radius.circular(90),
                                            bottomLeft: Radius.circular(90),
                                          )),
                                          textColor: Colors.white,
                                          collapsedBackgroundColor:
                                              Colors.amberAccent,
                                          backgroundColor: Colors.green,
                                          title: Text(
                                            " Matrix Display Project",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          children: <Widget>[
                                            ListTile(
                                              title: Text(
                                                "Matrix Display Board is simply termed ae web controlled smart notice board the project Matrix Display BOARD aims at Eliminating the data from the Desired DATABASE or the file and Display it on the LED DOT MATRIX DISPLAY.\nComponents Used are NodeMCUESP266 Board(Micro Controller) and 8*8 dot Matrix LED Display",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                ),
                                              ),
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                          image: AssetImage('images/logo-cloud.png'),
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
                                MediaQuery.of(context).size.height * 0.7 - 100,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ListView(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'images/cloud.jpg',
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, bottom: 5, top: 5),
                                    child: Text(
                                      'CLOUD COMPUTING',
                                      style: TextStyle(
                                        color: Colors.deepPurple.shade300,
                                        fontSize: 35,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: wid / 23, right: wid / 23),
                                    child: const Text(
                                      "Cloud computing is the on-demand availability of computer system resources, especially data storage (cloud storage) and computing power, without direct active management by the user. Large clouds often have functions distributed over multiple locations, each of which is a data center. Cloud computing relies on sharing of resources to achieve coherence and typically uses a pay-as-you-go model, which can help in reducing capital expenses but may also lead to unexpected operating expenses for users.",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                        left: wid / 6,
                                        bottom: 25,
                                        right: wid / 6),
                                    child: Container(
                                      height: 40,
                                      width: wid / 2,
                                      decoration: BoxDecoration(
                                          color: Colors.yellowAccent.shade700,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: const Center(
                                        child: Text(
                                          'PROJECTS',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: wid / 12),
                                    child: const ExpansionTile(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30))),
                                      collapsedShape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(90),
                                        bottomRight: Radius.circular(90),
                                      )),
                                      collapsedBackgroundColor:
                                          Colors.amberAccent,
                                      backgroundColor: Colors.green,
                                      textColor: Colors.white,
                                      iconColor: Colors.white,
                                      title: Text(
                                        " Placements Cloud",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            "To automate the process of placements\n\nComponents Used are Salesforce platform (data loader, workflow rules, Email alerts, reports and dashboards)",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          textColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 200),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: wid / 12),
                                        child: const ExpansionTile(
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          iconColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30))),
                                          collapsedShape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                            topLeft: Radius.circular(90),
                                            bottomLeft: Radius.circular(90),
                                          )),
                                          textColor: Colors.white,
                                          collapsedBackgroundColor:
                                              Colors.amberAccent,
                                          backgroundColor: Colors.green,
                                          title: Text(
                                            " Server migration to cloud",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          children: <Widget>[
                                            ListTile(
                                              title: Text(
                                                  'Our main objective is to turn "T-shaped" into a metaphor used to describe an ideal engineer. This program is an active part of an individual four-year engineering course, and shall surely make every participating individual ready for recruitment'),
                                              textColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
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
                  padding: const EdgeInsets.only(left: 10, right: 10),
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
                          image: AssetImage('images/logo-gaming.png'),
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
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          child: Material(
                            type: MaterialType.transparency,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.7 -
                                  100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'images/gaming.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: wid / 23, bottom: 5, top: 5),
                                      child: Text(
                                        'GAMING',
                                        style: TextStyle(
                                          color: Colors.yellow.shade700,
                                          fontSize: 35,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: wid / 23, right: wid / 23),
                                      child: const Text(
                                        'A game is a structured form of play, usually undertaken for entertainment or fun, and sometimes used as an educational tool.Many games are also considered to be work (such as professional players of spectator sports or games) or art (such as jigsaw puzzles or games involving an artistic layout such as Mahjong, solitaire, or some video games.',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: wid / 6,
                                          bottom: 25,
                                          right: wid / 6),
                                      child: Container(
                                        height: 40,
                                        width: wid / 2,
                                        decoration: BoxDecoration(
                                            color: Colors.yellowAccent.shade700,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Center(
                                          child: Text(
                                            'PROJECTS',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: wid / 12),
                                      child: const ExpansionTile(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(30))),
                                        collapsedShape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(90),
                                          bottomRight: Radius.circular(90),
                                        )),
                                        collapsedBackgroundColor:
                                            Colors.amberAccent,
                                        backgroundColor: Colors.green,
                                        textColor: Colors.white,
                                        iconColor: Colors.white,
                                        title: Text(
                                          "  Gangster Badlands",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        children: <Widget>[
                                          ListTile(
                                            title: Text(
                                              "GAME PLAY GANGSTER’S BADLANDS  is a player versus player shooter game in which up to twenty players fight in a battle royale, a type of large-scale last man standing deathmatch where players fight to remain the last alive. Players can choose to enter the match. The last person or team alive wins the match.\nGame developed in  UNITY\nDesigned Using PHOTOSHOP AND BLENDER",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            textColor: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 200),
                                      child: Container(
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: wid / 12),
                                          child: const ExpansionTile(
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                            iconColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30))),
                                            collapsedShape:
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                              topLeft: Radius.circular(90),
                                              bottomLeft: Radius.circular(90),
                                            )),
                                            textColor: Colors.white,
                                            collapsedBackgroundColor:
                                                Colors.amberAccent,
                                            backgroundColor: Colors.green,
                                            title: Text(
                                              " AR Resume",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            children: <Widget>[
                                              ListTile(
                                                title: Text(
                                                  "AR Resume that incorporates interactive 3D models and digital content to showcase a candidate's skills and qualifications. By using this application, job seekers can create engaging and interactive AR resumes that allow employers to view their work in a more immersive and interactive way.\n\ntechnologies used are Unity ,Vuforia,Photoshop,figma",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                textColor: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
          const SizedBox(height: 40),
          Container(
            width: wid,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.yellowAccent.shade700,
                  width: 3,
                )
                //color: Colors.pinkAccent,
                ),
            child: Center(
                child: Text("Images",
                    style: TextStyle(
                        color: Colors.yellowAccent.shade700, fontSize: 20))),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: SizedBox(
                  height: hi / 3,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      enlargeCenterPage: true,
                      animateToClosest: true,
                      disableCenter: true,
                    ),
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/onboardingday.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/onboarding2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/onboarding3.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/implementday.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/implement2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/depdiveday.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/deepdive2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/deepdive3.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
