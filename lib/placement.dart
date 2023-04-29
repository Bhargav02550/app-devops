import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Place extends StatefulWidget {
  const Place({super.key});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  late FlickManager flickManager1, flickManager2, flickManager3;

  @override
  void initState() {
    super.initState();
    flickManager1 = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        'images/Videos/Resume1.mp4',
        videoPlayerOptions: VideoPlayerOptions(
          allowBackgroundPlayback: false,
          mixWithOthers: false,
        ),
      ),
    );
    flickManager2 = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        'images/Videos/HR1.mp4',
        videoPlayerOptions: VideoPlayerOptions(
          allowBackgroundPlayback: false,
        ),
      ),
    );
    flickManager3 = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(
        'images/Videos/INTENSHIP.mp4',
        videoPlayerOptions: VideoPlayerOptions(
          allowBackgroundPlayback: false,
        ),
      ),
    );
  }

  @override
  void dispose() {
    flickManager1.dispose();
    flickManager2.dispose();
    flickManager3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[900],
        title: const Text(
          'Placements',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10),
                      child: Text(
                        'Video Resumes',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Technical Hub',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.red[100],
                    ),
                    child: const Icon(
                      Icons.video_camera_front_rounded,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlickVideoPlayer(
                  flickManager: flickManager1,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: Text(
                'Technical hubs have recognized the potential of video resumes to help students stand out in the job market and have therefore developed resources and support systems to help students create effective video resumes. By leveraging the expertise of these resources, students can create polished, professional-quality videos that highlight their skills and experiences in the best possible light.',
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10),
                      child: Text(
                        'HR Mock Interviews',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Technical Hub',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.red[100],
                    ),
                    child: const Icon(
                      Icons.question_mark_rounded,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlickVideoPlayer(
                  flickManager: flickManager2,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: Text(
                'HR mock interviews conducted by Technical Hub can provide valuable real-time experience of interviews by MNCs. These mock interviews are designed to simulate the actual interview process and help candidates gain a better understanding of what to expect when they sit down for an interview with an MNC.',
                style: TextStyle(fontSize: 13),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10),
                      child: Text(
                        'Incampus Internship',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Technical Hub',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.red[100],
                    ),
                    child: const Icon(
                      Icons.work_outline_rounded,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlickVideoPlayer(
                  flickManager: flickManager3,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: Text(
                'Technical Hub offers in-campus internships to students that provide them with the opportunity to gain practical experience in their chosen field of study. These internships typically last between 1 to 6 months and are paid, allowing students to earn money while also building their skills and knowledge.',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
