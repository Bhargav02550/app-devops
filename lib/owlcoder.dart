import 'package:flutter/material.dart';

class ImageOverlayPage extends StatefulWidget {
  @override
  _ImageOverlayPageState createState() => _ImageOverlayPageState();
}

class _ImageOverlayPageState extends State<ImageOverlayPage> {
  bool showOverlay = false;
  String overlayText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Overlay'),
      ),
      body: GestureDetector(
        onTapUp: (TapUpDetails details) {
          setState(() {
            showOverlay = true;
            overlayText = 'Hello!';
          });
        },
        child: Stack(
          children: <Widget>[
            Image.asset(
              'images/train.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            if (showOverlay)
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Text(
                    overlayText,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
