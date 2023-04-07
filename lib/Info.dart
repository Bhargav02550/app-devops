import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    double hig = MediaQuery.of(context).size.height;
    Future<bool> showExitPopup() async {
      return await showDialog(
            //show confirm dialogue
            //the return value will be from "Yes" or "No" options
            context: context,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              icon: const Icon(
                Icons.warning_rounded,
                color: Color.fromARGB(255, 226, 183, 53),
                size: 55,
              ),
              backgroundColor: Colors.greenAccent[50],
              content: const Text(
                'Do you really want to exit from the app ?',
                textAlign: TextAlign.center,
              ),
              title: Text("Are You Sure ?"),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.green[400]),
                        onPressed: () => Navigator.of(context).pop(true),

                        //return true when click on "Yes"
                        child: const Text('Yes'),
                      ),
                    ),
                    SizedBox(
                      width: wid / 20,
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        //return false when click on "NO"
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.green[400],
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ) ??
          false; //if showDialouge had returned null, then return false
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset('images/tsir.jpg'),
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Babji Neelam',
                            style: TextStyle(
                                fontFamily: 'Josef',
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Founder and CEO of Technical Hub',
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2.1,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(97, 226, 226, 226),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(
                                  Icons.call,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Phone:\n +91 8343818181',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 2.1,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(97, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Icon(
                                Icons.mail,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Email:\n support@technicalhub.io',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 1.06,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(97, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Icon(
                                  Icons.web,
                                  size: 35,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Website:\nhttps://technicalhub.io/index.php',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 2),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(97, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('images/Linked.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(97, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Text(
                            '@technicalhub',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 2),
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(97, 226, 226, 226),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                '@technicalhubio',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(97, 226, 226, 226),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('images/Instag.png'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 2),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(97, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('images/Youtube (1).png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.height / 4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(97, 226, 226, 226),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Text(
                            '@technicalhub8786',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 2),
                        child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(97, 226, 226, 226),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                '@technicalhubio',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(97, 226, 226, 226),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset('images/Facebook (1).png'),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
