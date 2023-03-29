import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('T - CONNECT'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 10),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
              Container(
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
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                              )
                            ],
                            image: const DecorationImage(
                                image: AssetImage('images/RHN2.jpg'),
                                alignment: Alignment(0.3, 0),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
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
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Codemind',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.pinkAccent,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive scenario based learning modules are designed to help a student look at a problem in a life like perspective. We strongly believe that every mind isn’t alike, and therefore we give the student a chance to express their opinion rather than trying to abide by a generalized one. The platform also guides students on how they should proceed with their goals and helps them prepare for their dream job in a personalized way',
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
                                      // SizedBox(
                                      //   height: 10,
                                      // ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 0),
                                        child: Text(
                                          'Codemind',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.pinkAccent,
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          'Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive scenario based learning modules are designed to help a student look at a problem in a life like perspective. We strongly believe that every mind isn’t alike, and therefore we give the student a chance to express their opinion rather than trying to abide by a generalized one. The platform also guides students on how they should proceed with their goals and helps them prepare for their dream job in a personalized way',
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
                                          'images/CO.png',
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
                                          'Automation',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 243, 108, 12),
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900,
                                              fontFamily: 'Alkatra'),
                                        ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 15),
                      child: Container(
                        //child: Text('$wi'),
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2431,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
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
}
