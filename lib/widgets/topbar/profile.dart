import 'package:flutter/material.dart';
import 'package:flutter_hoopsquad/screens/login/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
          );
        },
        child: Container(
          width: 35.0, // 버튼의 너비
          height: 35.0, // 버튼의 높이
          decoration: BoxDecoration(
            shape: BoxShape.circle, // 동그란 모양으로 설정
            image: DecorationImage(
              image: NetworkImage(
                'https://picsum.photos/200/300',
              ), // 수정된 이미지 URL 사용
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
