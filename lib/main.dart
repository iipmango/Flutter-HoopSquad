import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/widgets/match_deadline/match_deadline.dart';
import 'package:flutter_hoopsquad/widgets/topbar/profile.dart';
import 'package:flutter_hoopsquad/widgets/topbar/topbar.dart';
import 'package:flutter_hoopsquad/widgets/weather/weather.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    double parentHeight = MediaQuery.of(context).size.height;
    double percentHeight = (parentHeight / 100) * 20;
    double parentWidth = MediaQuery.of(context).size.width;
    double percentWidth = (parentWidth / 100) * 80;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: percentHeight,
              ),
              Column(
                children: [
                  TopBar(),
                  Weather(),
                  MatchDedlineContainer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
