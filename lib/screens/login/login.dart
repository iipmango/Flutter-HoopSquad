import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/button.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/text_button.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/text_input.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: percentHeight,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  children: [
                    Container(
                      width: percentWidth,
                      child: Column(
                        children: [
                          TextInput(
                            label: "이메일",
                            obscure: false,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextInput(
                            label: "비밀번호",
                            obscure: true,
                          ),
                          SizedBox(
                            height: percentHeight / 3,
                          ),
                        ],
                      ),
                    ),
                    Button(
                      text: "로그인",
                      bgColor: Color(0xFFF3A241),
                      textColor: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextBtn(text: "아이디 찾기"),
                        TextBtn(text: "비밀번호 찾기"),
                        TextBtn(text: "회원가입"),
                      ],
                    )
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
