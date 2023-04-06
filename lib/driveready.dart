import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flick_video_player/flick_video_player.dart';

class Drive extends StatefulWidget {
  @override
  _DriveState createState() => _DriveState();
}

class _DriveState extends State<Drive> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("images/Driveready.mp4"));
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
    double podugu =
        MediaQuery.of(context).size.height / 4 - (wid / 10.18518518518519);
    double baru =
        MediaQuery.of(context).size.width / 2 - (wid / 10.18518518518519);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Drive Ready"),
        backgroundColor: Colors.blue,
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
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              child: Text(
                "Drive Ready is a program designed to help attendees familiarize themselves with a technology and coding language of their choice. This hybrid mode of training ensures that every attendee is ready to ace every interview they attend. The trainings offered in this program are usually job specific and is designed to help the attendee acquire the adequate skills required to efficiently begin their career.",
                style: TextStyle(color: Colors.white),
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
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
                                  image: AssetImage('images/AWS.png'),
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
                                        0.7,
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
                                          child: Center(
                                            child: Image.asset(
                                              'images/Shaifu Zama.png',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Aws Devops',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nAmazon Web Services (AWS) DevOps is a set of practices and tools that enable developers to rapidly and efficiently deploy code to production environments. AWS DevOps is designed to help organizations automate software deployment, increase software release speed, and improve software application quality.",
                                            style: TextStyle(
                                              fontSize: 15,
                                              // color: Colors.blue
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
                                  image: AssetImage('images/GOOGLE DEVOPS.png'),
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
                                        0.7,
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
                                          child: Center(
                                            child: Image.asset(
                                              'images/GNK.jpeg',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Google Devops',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nGoogle DevOps refers to the set of practices and tools used to automate and streamline the software development process on the Google Cloud Platform. It enables developers to collaborate more efficiently and deliver software faster with improved quality and reliability. Google DevOps offers a   range of services and tools such as continuous integration,  continuous delivery, monitoring, and logging to optimize the software development lifecycle.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image:
                                      AssetImage('images/DIGITALMARKETING.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Kiran Kumar G.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Digital Marketing',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nDigital marketing refers to the use of digital channels such as social media, email, search engines, and websites to promote products or services and engage with customers. It includes a  range of tactics such as content marketing, search engine optimization (SEO), pay-per-click advertising (PPC), and social media marketing. ",
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
                                  image: AssetImage('images/fff.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Krishna.jpeg',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Google Flutter',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nGoogle Flutter is an open-source mobile app development framework that allows developers to build high-performance, natively compiled applications for mobile, web, and desktop platforms. It uses the Dart programming language and offers a range of customizable widgets and tools for building beautiful and responsive user interfaces. Flutter's hot reload feature enables developers to see the changes in real-time, making it a popular choice for rapid app development.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/MACHINE.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Rajesh.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Machine Learning',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nMachine learning is a subset of artificial intelligence that involves training computers to learn from data without being explicitly programmed. It is used to develop predictive models and algorithms that can make decisions or identify patterns in data. Machine learning has applications in a wide range of fields, from finance and healthcare to marketing and social media.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/AZURE DEVOPS.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Pavan Teja.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Azure Devops',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nAzure DevOps is a set of practices and tools provided by Microsoft that enable developers to build, test, and deploy applications to the cloud. It includes a variety of services such as Azure Boards, Azure Repos, Azure Artifacts, Azure Pipelines, and Azure Test Plans that allow developers to manage the entire software development lifecycle.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/cybersecurity.png'),
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
                                        0.7,
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
                                            'images/Jhonathan Peter.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Cyber Security',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nCybersecurity refers to the practices and technologies used to protect digital systems, networks, and sensitive information from unauthorized access, theft, or damage. It involves a range of activities such as threat analysis, risk management, and incident response. Cybersecurity is crucial for individuals, businesses,  and governments to safeguard against cyberattacks and protect the privacy and data integrity.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/celonis RPA.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Jhonathan Peter.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Celonis + RPA',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nCelonis is a process mining software that uses data analytics and machine learning to visualize and optimize business processes.  When combined with Robotic Process Automation (RPA), it can further enhance process efficiency by automating repetitive and time-consuming tasks. The integration of Celonis with RPA enables businesses to identify process bottlenecks, eliminate inefficiencies, and automate workflows, resulting in cost savings and increased productivity.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/automation.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Sai teja.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Automation Testing',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nAutomation testing involves using software tools to automatically perform tests on software applications. It helps to improve testing efficiency and reduce the time and costs associated with manual testing. Automation testing is especially useful for repetitive tests and for ensuring the stability and reliability of software applications.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/IOTD.png'),
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
                                        0.7,
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
                                          child: Center(
                                            child: Image.asset(
                                              'images/Boby Kiran .png',
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'IoT',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nThe Internet of Things (IoT) refers to the network of physical devices, vehicles, home appliances, and other items embedded with sensors, software, and connectivity that enable them to exchange data and interact with each other. IoT technology allows for real-time monitoring and control of devices and systems, creating opportunities for increased efficiency and automation in various industries.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/arvrd.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Prasanth.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'AR/VR',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nAugmented Reality (AR) and Virtual Reality (VR) are technologies that allow users to experience digital environments in new and immersive ways. AR enhances the user's real-world environment with computer-generated elements, while VR provides a fully immersive, computer-generated environment.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/UI UX.jpg'),
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
                                        0.7,
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
                                            'images/SDP.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'UI/UX',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nUser Interface (UI) and User Experience (UX) are two related but distinct concepts in software design. UI refers to the visual and interactive elements that users see and interact with when using a software application.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/peg.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Mutyala Babu.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Pega',
                                            style: TextStyle(
                                              color: Colors.indigo,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nPega is a cloud-based software platform for building and deploying business process management (BPM) and customer relationship management (CRM) applications. It provides a range of tools and services for designing, automating, and managing business processes and customer interactions. Pega's low-code approach  enables organizations to build and deploy applications more quickly and with less coding.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/SAP ABAP.jpg'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Ganapathi.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'SAP ABAP',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nSAP ABAP (Advanced Business Application Programming) is a high-level programming language developed by SAP for building business  applications. It is used to develop custom modules and applications for SAP's enterprise resource planning (ERP) software. ABAP supports a wide range of programming constructs and features for developing complex business logic and data processing   applications.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/fullstack.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/NDP.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Fullstack',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nFull stack refers to the combination of front-end and back-end  development skills needed to create a complete web application. It nvolves knowledge of various technologies such as HTML, CSS, JavaScript, databases, and web servers. Full stack developers are responsible for designing, building, and maintaining the entire  web application, from the user interface to the server-side logic.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/Salesforce.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Kiran Immadi.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Salesforce',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nSalesforce is a cloud-based customer relationship management  (CRM) platform that helps businesses manage their sales, marketing, and customer service activities. It offers a range of services and tools such as sales forecasting, lead and opportunity management, and customer support. Salesforce also provides a range of integrations and customization options to   fit the needs of different businesses.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image:
                                      AssetImage('images/REDHAT+OPENSHIFT.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/veera Babu.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'REDHAT+OPENSHIFT',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nRed Hat OpenShift is a Kubernetes-based container application platform that allows developers to build, deploy, and manage applications in the cloud. OpenShift combines the benefits of Kubernetes with Red Hat's enterprise-grade reliability, security, and support. ",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage(
                                      'images/ccna NETWORKING SECURITY.PNG'),
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
                                        0.8,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/surya Ashok.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'CCNA + Networking Security',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nCCNA (Cisco Certified Network Associate) is a popular certification program that validates the knowledge and skills needed to install, configure, and troubleshoot network devices. Network security is an essential aspect of CCNA, as it covers topics such as securing network devices, implementing secure network access, and mitigating common network threats.",
                                            style: TextStyle(
                                              fontSize: 15,
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
                                  image: AssetImage('images/SERVICENOW.png'),
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
                                        0.7,
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
                                          child: Container(
                                            child: Image.asset(
                                              'images/Raja Choudary.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 0),
                                          child: Text(
                                            'Servicenow',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 40,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Text(
                                            "\nServiceNow is a cloud-based software platform that provides a   range of IT service management (ITSM) and digital workflow automation solutions. It offers tools and services for managing incidents, problems, changes, and images, as well as automating common IT tasks such as onboarding/offboarding employees and managing software licenses.",
                                            style: TextStyle(
                                              fontSize: 15,
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
