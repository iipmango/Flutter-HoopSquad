import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/widgets/topbar/addr.dart';
import 'package:flutter_hoopsquad/widgets/topbar/alarm.dart';
import 'package:flutter_hoopsquad/widgets/topbar/profile.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Addr(),
          Alarm(),
          Profile(),
        ],
      ),
    );
  }
}
