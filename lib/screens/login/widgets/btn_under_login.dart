import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/text_button.dart';

class ExtraBtn extends StatelessWidget {
  const ExtraBtn({super.key});

  @override
  Widget build(BuildContext context) {
    double parentHeight = MediaQuery.of(context).size.height;
    double percentHeight = (parentHeight / 100) * 30;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextBtn(text: "아이디 찾기"),
        TextBtn(text: "비밀번호 찾기"),
        TextBtn(text: "회원가입"),
      ],
    );
  }
}
