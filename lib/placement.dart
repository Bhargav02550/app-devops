import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/position/gf_position.dart';

class Place extends StatefulWidget {
  const Place({super.key});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent.shade700,
        title: const Text(
          'Placements',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
      ),
      body: Column(
        children: const [
          GFCard(
            height: 500,
            boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            showOverlayImage: true,
            imageOverlay: NetworkImage(
              'https://image.ionicfirebaseapp.com/getwidget/docs/tr:w-800,f-auto/Cards_with_avatars_3x_wiStZFa9L.png',
            ),
          )
        ],
      ),
    );
  }
}
