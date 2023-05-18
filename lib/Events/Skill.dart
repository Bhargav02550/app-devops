import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class Skill extends StatefulWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        autoPlay: false,
        videoPlayerController:
            VideoPlayerController.asset("images/VN20230405_204026.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Image.asset(
          'images/Techo.png',
          height: 35,
          width: 200,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FlickVideoPlayer(
                flickManager: flickManager,
              ),
            ),
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
                  color: Colors.blue[100],
                  border: Border.all(
                    color: Colors.blueAccent,
                  )),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Skiller's day is Conducted to admire the skill of the students in different Technologies like coding and RPA(Robotic Process Automation),On the day of Skillers day Technical Hub awareded trainees who won the mid year coding contest and also awarded the trainees who won the top 5 prizes in Robotic process Automation.",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 15, top: 20, right: w / 15),
            child: Container(
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blueAccent,
                  )),
              child: const Text(
                " Programs for Skiller day :",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 15),
            child: Container(
              child: Text(
                "Mid Year Coding Contest: ",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/Events/C_1.png",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/C_2.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/C_3.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/C_4.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/C_6.jpeg"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 15),
            child: Text(
              "Robotic Process Automation (BOT CHALLANGE) :",
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/R-1.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/R-2.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/Rpa_arun.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/Rpa_divya - Copy.jpeg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: w / 12, top: 10, right: w / 12, bottom: w / 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/Events/R-5.jpeg"),
            ),
          ),
        ],
      ),
    );
  }
}
