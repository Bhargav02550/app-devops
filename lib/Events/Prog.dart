import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Prog extends StatefulWidget {
  const Prog({Key? key}) : super(key: key);

  @override
  State<Prog> createState() => _ProgState();
}

class _ProgState extends State<Prog> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          Image.asset("images/Techo.png"),
          SizedBox(
            width: w / 4,
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 250.0,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                onPageChanged: null,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/Events/mabbu.png',
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/Events/Coding Contest.png',
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/Events/COGNIMIND.png',
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/Cyber Securityp.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/Fastest Finger First.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/Dynamic Programmer.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/Linux Challenge.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/Networking Challenge.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/Web Dev Challange.png'),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/Events/WET TYPO.png'),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: w / 15,
              right: w / 15,
            ),
            child: Container(
              decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orangeAccent[100],
                  border: Border.all(
                    color: Colors.orange,
                  )),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Proramming day is Conducted 13 th September.On that day Technical hub was conducted many activities like cloud, cybersecurity , coding, and typing challanges etc...Awards was distributed to the winners on the Programmers day",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 15, top: 20, right: w / 15),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.deepOrange,
                  )),
              child: const Text(
                " Winners in Programmers Day :",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  "images/Events/Winners Poster @ Programmers Day_4.2.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  "images/Events/Winners Poster @ Programmers Day_4.2.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  "images/Events/Winners Poster @ Programmers Day_4.2 (1).jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                  "images/Events/Winners Poster @ Programmers Day_4.3.jpg"),
            ),
          ),
        ],
      ),
    );
  }
}
