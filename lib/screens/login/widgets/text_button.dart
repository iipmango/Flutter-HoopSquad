import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  final String text;

  const TextBtn({
    super.key,
    required this.text,
  });

  void navigateToPage() {
    print("123");
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: navigateToPage,
      child: Text(text),
    );
  }
}
