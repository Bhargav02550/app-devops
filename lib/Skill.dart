import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        videoPlayerController:
            VideoPlayerController.asset("images/VN20230405_204026.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        actions: [
          Image.asset("images/Techo.png"),
          SizedBox(
            width: 70,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Seven Years, Technical-Hub has been a innovation, progress, and excellence in the field of Computer Technology Technical Hub, a institution is known for it's cutting-edge research om fields like Technologies such as ,coding weeb development, cloud computing , AI's etc ..., Our commitment to pushing the boundaries of techology for Students. ",
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
              child: Text(
                " Programs for Skiller day :",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
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
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/C_1.png",
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/C_2.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/C_3.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/C_4.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/C_6.jpeg"),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: w / 15),
            child: Container(
              child: Text(
                "Robotic Process Automation (BOT CHALLANGE) :",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/R-1.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/R-2.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/Rpa_arun.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/Rpa_divya - Copy.jpeg"),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: w / 12, top: 10, right: w / 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/R-5.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
