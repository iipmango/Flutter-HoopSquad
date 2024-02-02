import 'package:flutter/material.dart';

class Addr extends StatefulWidget {
  const Addr({super.key});

  @override
  _Addr createState() => _Addr();
}

class _Addr extends State<Addr> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: TextButton(
        onPressed: incrementCounter,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Press Me'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
