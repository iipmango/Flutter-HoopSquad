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
    double parentWidth = MediaQuery.of(context).size.width;
    double percentWidth = (parentWidth / 100) * 33;
    return Container(
      child: Row(
        children: [
          Addr(),
          SizedBox(
            width: percentWidth,
          ),
          Alarm(),
          Profile(),
        ],
      ),
    );
  }
}
