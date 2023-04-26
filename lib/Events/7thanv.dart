import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class Anv extends StatefulWidget {
  const Anv({Key? key}) : super(key: key);

  @override
  State<Anv> createState() => _AnvState();
}

class _AnvState extends State<Anv> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        autoPlay: false,
        videoPlayerController:
            VideoPlayerController.asset("images/7thanvid.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          Image.asset("images/Techo.png"),
          const SizedBox(
            width: 100,
          )
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(w / 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                left: w / 15,
                right: w / 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[100],
                    border: Border.all(
                      color: Colors.greenAccent,
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
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
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.teal,
                    )),
                child: const Text(
                  " On The Day Of  7th Aniversery :",
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
                  "T-Awards 2023: ",
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/IMG-20230406-WA0022.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      //width: 120,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Best Tech Coach',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/bestdeveloper.png'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      //width: 120,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Best Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/IMG-20230406-WA0034.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      //width: 120,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Star of the Year',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/IMG-20230406-WA0026.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: const SizedBox(
                      height: 40,
                      //width: 120,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Beyond the Call of Duty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/IMG-20230406-WA0024.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      //width: 120,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Emerging Tech',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/IMG-20230406-WA0027.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      //width: 120,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Coder of the Year',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/Best.png'), fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 40,
                      //width: 120,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Trainee of the Year',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, right: w / 15),
              child: Container(
                height: h / 4.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('images/IMG-20230406-WA0028.jpg'),
                      fit: BoxFit.fill),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: h / 6.5),
                  child: BlurryContainer(
                    width: double.infinity,
                    blur: 3,
                    color: const Color.fromARGB(92, 17, 17, 18),
                    borderRadius: BorderRadius.circular(20),
                    child: const SizedBox(
                      height: 40,
                      //width: 120,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Topper of Codemind',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, bottom: 10),
              child: Container(
                child: Text(
                  "Coding Contest Winners: ",
                  style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: w / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/1stprize.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: w / 20,
                ),
                Container(
                  height: 100,
                  width: w / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/IMG-20230406-WA0033.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: w / 20,
                ),
                Container(
                  height: 100,
                  width: w / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/IMG-20230406-WA0025.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: w / 15, top: 10),
              child: Text(
                "Event Moments: ",
                style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 250.0,
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    onPageChanged: null,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    Image.asset('images/IMG-20230406-WA0030(1).jpg',
                        fit: BoxFit.fill),
                    Image.asset('images/IMG-20230406-WA0023.jpg',
                        fit: BoxFit.fill),
                    Image.asset('images/IMG-20230406-WA0021.jpg',
                        fit: BoxFit.fill),
                    Image.asset('images/interns.png', fit: BoxFit.fill),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
