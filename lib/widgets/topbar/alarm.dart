import 'package:flutter/material.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  _Alarm createState() => _Alarm();
}

class _Alarm extends State<Alarm> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: incrementCounter,
        child: Icon(
          Icons.notifications,
          size: 30,
        ),
      ),
    );
  }
}
