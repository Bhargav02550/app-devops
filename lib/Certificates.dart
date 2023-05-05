import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    Future<bool> showExitPopup() async {
      return await showDialog(
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
                'Do you really want to exit from the app ?',
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
                        child: const Text('Yes'),
                      ),
                    ),
                    SizedBox(
                      width: w / 20,
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.green[400],
                        ),
                        child: const Text('Cancel'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue[200],
          title: Image.asset('images/Events/Techo.png',
              fit: BoxFit.cover, height: 35.00, width: 200.00),
          centerTitle: true,
        ),
        body: Center(
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: [
              Card(
                child: Image.asset(
                  "images/Certify/REDHAT.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/SECURITY.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/UNITY PROG.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/AWS.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/AZURE AI.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/GCC.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/HTML.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/JAVA.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/JS.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/PYTHON.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/PS.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Card(
                child: Image.asset(
                  "images/Certify/SALES.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}