import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Tinfo extends StatefulWidget {
  const Tinfo({super.key});

  @override
  State<Tinfo> createState() => _TinfoState();
}

class _TinfoState extends State<Tinfo> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ClipRRect(
              child: Image(image: AssetImage('images/Babjisir.png')),
            ),
            Container(
              height: hi / 10,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 10,
                  //     spreadRadius: 1,
                  //     color: Colors.black54,
                  //   )
                  // ],
                  ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: const [
                    Text(
                      'Babji Neelam',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Josef'),
                    ),
                    Text(
                      'Founder and CEO of Technical Hub',
                      style:
                          TextStyle(color: Color.fromARGB(255, 114, 113, 113)),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Contact Us :',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10),
                  child: Icon(Icons.phone_android_rounded),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text('Phone: + 91 8343818181'),
                )
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Icon(Icons.email_outlined),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text('Email: support@technicalhub.io'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      image: DecorationImage(
                          image: AssetImage('images/Insta.png')),
                    ),
                  ),
                ),
                const Text(
                  '@ technicalhubio',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      image:
                          DecorationImage(image: AssetImage('images/Face.png')),
                    ),
                  ),
                ),
                const Text(
                  ' @ technicalhubio',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      image: DecorationImage(
                          image: AssetImage('images/Youtube.png')),
                    ),
                  ),
                ),
                const Text(
                  ' @ technicalhub@8786',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      image: DecorationImage(
                          image: AssetImage('images/Linkedin.png')),
                    ),
                  ),
                ),
                const Text(
                  ' @ technicalhub',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      image:
                          DecorationImage(image: AssetImage('images/Map.png')),
                    ),
                  ),
                ),
                const Text(
                  'Technical Hub , Aditya Global Inubation Center,\nAndhra Pradesh, India',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
