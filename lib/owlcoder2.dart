import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:thub/owlcoder1.dart';

class Know extends StatefulWidget {
  const Know({Key? key}) : super(key: key);

  @override
  State<Know> createState() => _KnowState();
}

class _KnowState extends State<Know> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
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
                      autoplay: true,
                      animationDuration: Duration(seconds: 1),
                      images: [
                        Image.asset(
                          'assets/owl coder 1.png',
                          fit: BoxFit.fill,
                        ),
                        Image.asset('assets/owlcoder3.1.png', fit: BoxFit.fill),
                        Image.asset('assets/owlcoder34.png', fit: BoxFit.fill),
                        Image.asset('assets/owlcoder32.png', fit: BoxFit.fill),
                        Image.asset('assets/Owlcoder.33.png', fit: BoxFit.fill),
                        Image.asset('assets/owlcoder32.png', fit: BoxFit.fill),
                        Image.asset('assets/owlcoder12.png', fit: BoxFit.fill),
                        Image.asset('assets/owlcoder31.png', fit: BoxFit.fill),
                      ],
                    ),
                  ),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 12),
              Container(
                height: 30,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pinkAccent,
                      ),
                    ]),
                child: Text(
                  "No of problems Submitted",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 3,
            color: Colors.green,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                FloatingActionButton.small(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/gfg logo 2.webp",
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Geeks for Geeks ",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "54928+ submissions ",
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                FloatingActionButton.small(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/leetcode.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "  Leetcode",
                    style: TextStyle(
                        color: Colors.orange[400],
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "45368+ submissions ",
                    style: TextStyle(
                        color: Colors.orange[400],
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(width: 20),
                FloatingActionButton.small(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    "assets/codechef.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "   CodeChef",
                    style: TextStyle(
                        color: Colors.brown[700],
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "36313+ submissions ",
                    style: TextStyle(
                        color: Colors.brown[700],
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 12),
              Container(
                height: 30,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple,
                      ),
                    ]),
                child: Text(
                  "Badges",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purpleAccent,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 100,
                      child: Image.asset("assets/owlcoderbadge1.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Container(
                    child: Text(
                      "   Owl Coder Badge1 \n Completed By 270 Owls",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 100,
                      child: Image.asset("assets/owlcoderbadge2.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Container(
                    child: Text(
                      "   Owl Coder Badge2 \n Completed By 170 Owls",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 100,
                      child: Image.asset("assets/owlcoderbadge3.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Container(
                    child: Text(
                      "   Owl Coder Badge3 \n Completed By 80 Owls",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 100,
                      child: Image.asset("assets/owlcoderbadge4.png")),
                  SizedBox(width: MediaQuery.of(context).size.width / 8),
                  Container(
                    child: Text(
                      "   Owl Coder Badge4 \n Completed By 36 Owls",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
