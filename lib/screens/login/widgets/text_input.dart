import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final bool obscure;
  TextInput({
    super.key,
    required this.label,
    required this.obscure,
  });

  TextEditingController valueController = TextEditingController();

  String getValue() {
    return valueController.text;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: valueController,
      obscureText: obscure,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email / password';
        }
        return null;
      },
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // 선택된 상태의 테두리 색상
        ),
        labelText: label,
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
      ),
    );
  }
}
