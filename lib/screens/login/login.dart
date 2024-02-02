import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/btn_under_login.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/button.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/id_pwd.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double parentHeight = MediaQuery.of(context).size.height;
    double percentHeight = (parentHeight / 100) * 30;
    double parentWidth = MediaQuery.of(context).size.width;
    double percentWidth = (parentWidth / 100) * 80;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: percentHeight,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  children: [
                    Input(),
                    Button(
                      text: "로그인",
                      bgColor: Color(0xFFF3A241),
                      textColor: Colors.white,
                    ),
                    ExtraBtn(),
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
