import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bubble_lens/bubble_lens.dart';
import 'package:flutter/material.dart';
import 'package:thub/Team/details.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/Team/BABJI.png',
    designation: 'Babji Neelam',
    team: 'CEO',
    title: 'T-HUB',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/VEERABABU.png',
    designation: 'Veerababu',
    team: 'Program Manager Operations',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SUDHIR.png',
    designation: 'Sudhir',
    team: 'Program Manager IT',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/KIRAN-KUMAR.png',
    designation: 'Kiran',
    team: 'Program Manager Relationship',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SHAIFU.png',
    designation: 'Shaifu',
    team: 'Program Manager Training',
    title: 'Sudhir',
    details: 'CompTIA IT Fundamentals',
  ),
  ImageDetails(
    imagePath: 'images/Team/RAJESH-B.png',
    designation: 'Rajesh',
    team: 'Program Manager Placements',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/KIRAN.png',
    designation: 'Kiran',
    team: 'Salseforce Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/krishna.webp',
    designation: 'Krishna',
    team: 'Google Flutter Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/ARAVIND.png',
    designation: 'Aravind',
    team: 'AWS Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/ARJUN.png',
    designation: 'Krishnarjuna',
    team: 'Graphic Desginer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/ASHOK-M.png',
    designation: 'Ashok',
    team: 'Lead Trainer SDE',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/ASHOK-SIRIKI.png',
    designation: 'Surya Ashok',
    team: 'DevOps Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/BHARATH.png',
    designation: 'Bharathi Kumar',
    team: 'Aptitude Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/BHUPATHI.png',
    designation: 'Bhupathi',
    team: 'Network AdminiStrator',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/BOBBY-KIRAN.png',
    designation: 'Bobby Kiran',
    team: 'IOT Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/BOBBY.png',
    designation: 'Bobby',
    team: 'Dev Ops Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/DIRGA PRASAD.webp',
    designation: 'DURGA PRASAD',
    team: 'Web Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/DIVYA.png',
    designation: 'Divya',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/GANAPATHI.png',
    designation: 'Ganapathi',
    team: 'Technical Tainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/GIRISH.png',
    designation: 'Girish',
    team: 'Web Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/HANUMANTH.webp',
    designation: 'Hanumanth',
    team: 'Coding Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/JDP.png',
    designation: 'Durga Prasad',
    team: 'Web Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/KIJSHORE.webp',
    designation: 'Kishore',
    team: 'Coding Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/LOVA-RAJU.png',
    designation: 'Lova Raju',
    team: 'Support Executive',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/M-RAJESH.png',
    designation: 'Rajesh',
    team: 'Technical Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/MUTYALA-BABU.png',
    designation: 'Mutyala Babu',
    team: 'Pega Trainer',
    title: 'Sudhir',
    details: 'Pega System Architect',
  ),
  ImageDetails(
    imagePath: 'images/Team/NANI.webp',
    designation: 'Nani',
    team: 'Python Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/NARASIMHA.png',
    designation: 'Narasimha',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/NAVEEN.png',
    designation: 'Naveen',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/NDP.png',
    designation: 'N.Durga Prasad',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/PAVAN-TEJA.png',
    designation: 'Pavan Teja',
    team: 'Dev Ops Tainer',
    title: 'Sudhir',
    details: 'AWS Certified Solutions',
  ),
  ImageDetails(
    imagePath: 'images/Team/PAVAN.png',
    designation: 'Pavan',
    team: 'Coding Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/PETER.png',
    designation: 'Jonathan Peters',
    team: 'Security Analyst',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/PRAKASH.png',
    designation: 'Prakash',
    team: 'IOT Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/PRASANTH.png',
    designation: 'Prasanth',
    team: 'AR/VR Developer',
    title: 'Sudhir',
    details:
        '1.Unity Certified User: Artist\n2.Unity Certified user: Programmer\n3.Unity Certified VR Developer',
  ),
  ImageDetails(
    imagePath: 'images/Team/RAJA-CHOWDARI.png',
    designation: 'Raja Chowdhari',
    team: 'Pega Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/RAMBABU.png',
    designation: 'Rambabu',
    team: 'Cloud Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/RAMESH.png',
    designation: 'Prasanth',
    team: 'AR?VR Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/RENUKA.png',
    designation: 'Renuka',
    team: 'Softskills Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SAI-KIRAN.png',
    designation: 'Sai Kiran',
    team: '3D Graphics Desginer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SAI-KUMAR.png',
    designation: 'Sai Kumar',
    team: 'Support Executive',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SAI-TEJA.png',
    designation: 'Sai Teja',
    team: 'Automation Trainer',
    title: 'Sudhir',
    details: 'Autodesk Autocad',
  ),
  ImageDetails(
    imagePath: 'images/Team/SAMULE.png',
    designation: 'Samule',
    team: 'Network Administrator',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SATHISH.png',
    designation: 'Sathish',
    team: 'Web developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SATISH.png',
    designation: 'Satish',
    team: 'Pega Trainer',
    title: 'Sudhir',
    details: 'Pega System Architect',
  ),
  ImageDetails(
    imagePath: 'images/Team/SDP.png',
    designation: 'Durga Prasad',
    team: 'Motion Graphic Desginer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SIDIK.png',
    designation: 'Sidik',
    team: 'Apptitude trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SIMHADRI.png',
    designation: 'Simhadri',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SIVA.png',
    designation: 'Siva',
    team: 'Support Executive',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SUNEEL.png',
    designation: 'Suneel',
    team: 'Full Stack Developer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/SRINU.png',
    designation: 'Srinu',
    team: 'SalseForce Trainer',
    title: 'Sudhir',
    details: 'Salseforce Administrator',
  ),
  ImageDetails(
    imagePath: 'images/Team/VARDINI.png',
    designation: 'Vardini',
    team: 'Data Analytics Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/VASANTH.webp',
    designation: 'Vasanth',
    team: 'Flutter Trainer',
    title: 'Sudhir',
    details: '',
  ),
  ImageDetails(
    imagePath: 'images/Team/VIJAY.png',
    designation: 'Vijay',
    team: 'Dev Ops Trainer',
    title: 'Sudhir',
    details: '',
  ),
];

class ImageDetails {
  final String imagePath;
  final String designation;
  final String team;
  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,
    required this.designation,
    required this.team,
    required this.title,
    required this.details,
  });
}

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
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
                'Do you want to exit the app ?',
                textAlign: TextAlign.center,
              ),
              title: const Text("Are You Sure ?"),
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
                          backgroundColor: Colors.green,
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
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: BlurryContainer(
          color: Colors.white,
          child: BubbleLens(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              widgets: [
                for (var i = 0; i < _images.length; i++)
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      child: Image.asset(_images[i].imagePath),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[i].imagePath,
                              title: _images[i].title,
                              team: _images[i].team,
                              designation: _images[i].designation,
                              details: _images[i].details,
                            ),
                          ),
                        );
                      },
                    ),
                    //color: [Colors.red, Colors.green, Colors.blue][i % 3],
                  )
              ]),
        )),
      ),
    );
  }
}
