import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Codemind',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Codemind',
            style: TextStyle(color: Colors.deepPurple),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images2.alphacoders.com/100/1007550.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.topCenter,
              child: Text(
                'Replace with Video',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                'CODEMIND platform is exclusively designed by Technical Hub team to give our trainees an exclusive interactive modules,share their knowledge and is ready to grab their dream job.We have hundreds of concepts, tutorials and much more just for the trainees inside you.',
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ),
            Container(
              //color: Colors.green,
              height: 200,
              width: double.infinity,
              child: Row(
                //x axis
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //y axis
                //crossAxisAlignment: ,
                children: <Widget>[
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/code.jpg'),
                                //image: NetworkImage("https://images2.alphacoders.com/100/1007550.jpg"),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.indigoAccent),
                        ),
                        Text('data'),
                        Ink.image(
                          image: NetworkImage(
                              "https://images2.alphacoders.com/100/1007550.jpg"),
                          fit: BoxFit.cover,
                        ),
                        /*Text('data 1',style: TextStyle(color: Colors.red),),
                        Text('text 2',style: TextStyle(color: Colors.pink),),*/
                      ],
                    ),
                    /*child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      color: Colors.black,
                    ),*/
                  )
                  /*Container(
                  margin: EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images2.alphacoders.com/100/1007550.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.indigoAccent
                    ),
                ),
                Container(

                  margin: EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images2.alphacoders.com/100/1007550.jpg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.amberAccent
                    ),
                )*/
                ],
              ),
            )
          ],
        ));
  }
}
