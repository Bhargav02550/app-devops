
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coding",style: TextStyle(color: Colors.pinkAccent),),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
            child: ListView(
              children: [
                Container(
                  child: Text("Coding is the process of creating instructions in a programming language that a computer can understand and execute.\nOur distinctive approach to teaching is guaranteed to keep you entertained.",style: TextStyle(color: Colors.green,fontSize: 16),),
                  padding: EdgeInsets.all(20),
                ),
                SizedBox(
                  height: 350.0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 300,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      onPageChanged: null,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/courses_topics.png',fit: BoxFit.cover),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/skillupcoder.png',fit: BoxFit.cover,),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/sc1.png',fit: BoxFit.cover),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/python.png',fit: BoxFit.cover),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Text("We have various topics in all the courses, Skillup coder and Become coder courses are level based. After completing one level the next level will be unlocked.",style: TextStyle(color: Colors.green,fontSize: 16),),
                  padding: EdgeInsets.all(20),
                ),
              ],
            ),
        ),
      ),
    );
  }
}