import 'package:flutter/material.dart';

class Cert extends StatefulWidget {
  const Cert({super.key});

  @override
  State<Cert> createState() => _CertState();
}

class _CertState extends State<Cert> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
