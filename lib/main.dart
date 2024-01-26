import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/widgets/button.dart';
import 'package:flutter_hoopsquad/widgets/text_input.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    double parentHeight = MediaQuery.of(context).size.height;
    double percentHeight = (parentHeight / 100) * 30;
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
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  children: [
                    TextInput(
                      label: "Email",
                      obscure: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextInput(
                      label: "Password",
                      obscure: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Button(
                      text: "Log in",
                      bgColor: Color(0xFFF3A241),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
