import 'package:bubble_lens/bubble_lens.dart';
import 'package:flutter/material.dart';

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  State<Team> createState() => _TeamState();
}

List img = [
  "images/Team/BABJI.png",
  "images/Team/VEERABABU.png",
  "images/Team/SUDHIR.png",
  "images/Team/RAJESH-B.png",
  "images/Team/KIRAN-KUMAR.png",
  "images/Team/SHAIFU.png",
  "images/Team/KIRAN.png",
  "images/Team/krishna.webp",
  "images/Team/ARAVIND.png",
  "images/Team/ASHOK-M.png",
  "images/Team/ASHOK-SIRIKI.png",
  "images/Team/BHARATH.png",
  "images/Team/BHUPATHI.png",
  "images/Team/BOBBY-KIRAN.png",
  "images/Team/DIRGA PRASAD.webp",
  "images/Team/DIVYA.png",
  "images/Team/GANAPATHI.png",
  "images/Team/GIRISH.png",
  "images/Team/HANUMANTH.webp",
  "images/Team/JDP.png",
  "images/Team/KIJSHORE.webp",
  "images/Team/M-RAJESH.png",
  "images/Team/MUTYALA-BABU.png",
  "images/Team/NANI.webp",
  "images/Team/NARASIMHA.png",
  "images/Team/NDP.png",
  "images/Team/PAVAN-TEJA.png",
  "images/Team/PAVAN.png",
  "images/Team/PETER.png",
  "images/Team/PRAKASH.png",
  "images/Team/PRASANTH.png",
  "images/Team/RAJA-CHOWDARI.png",
  "images/Team/RAMBABU.png",
  "images/Team/RAMESH.png",
  "images/Team/RENUKA.png",
  "images/Team/SAI-KIRAN.png",
  "images/Team/SAI-KUMAR.png",
  "images/Team/SAI-TEJA.png",
  "images/Team/SAMULE.png",
  "images/Team/SATHISH.png",
  "images/Team/SATISH.png",
  "images/Team/SDP.png",
  "images/Team/SIDIK.png",
  "images/Team/SIMHADRI.png",
  "images/Team/SIVA.png",
  "images/Team/SRINU.png",
  "images/Team/SUNEEL.png",
  "images/Team/VARDINI.png",
  "images/Team/VASANTH.webp",
  "images/Team/VIJAY.png",
];

List open = [
  Babji(),
  verubai(),
];

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
        color: Colors.white,
        child: BubbleLens(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            widgets: [
              for (var i = 0; i < img.length; i++)
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    child: Image.asset(img[i]),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => open[i]));
                    },
                  ),
                  //color: [Colors.red, Colors.green, Colors.blue][i % 3],
                )
            ]),
      )),
    );
  }
}

class Babji extends StatefulWidget {
  const Babji({super.key});

  @override
  State<Babji> createState() => _BabjiState();
}

class _BabjiState extends State<Babji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}

class verubai extends StatefulWidget {
  const verubai({super.key});

  @override
  State<verubai> createState() => _verubaiState();
}

class _verubaiState extends State<verubai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
    );
  }
}
