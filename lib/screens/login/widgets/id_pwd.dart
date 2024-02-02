import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/screens/login/widgets/text_input.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    double parentWidth = MediaQuery.of(context).size.width;
    double percentWidth = (parentWidth / 100) * 80;
    double parentHeight = MediaQuery.of(context).size.height;
    double percentHeight = (parentHeight / 100) * 30;

    TextInput id = TextInput(
      label: "이메일",
      obscure: false,
    );

    TextInput pwd = TextInput(
      label: "비밀번호",
      obscure: false,
    );

    void onPressLoginBtn() {
      String email = id.getValue();
      String password = pwd.getValue();
    }

    return SizedBox(
      width: percentWidth,
      child: Column(
        children: [
          id,
          SizedBox(
            height: 10,
          ),
          pwd,
          SizedBox(
            height: percentHeight / 3,
          ),
        ],
      ),
    );
  }
}
