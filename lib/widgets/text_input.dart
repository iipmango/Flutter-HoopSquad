import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final bool obscure;
  const TextInput({
    super.key,
    required this.label,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black.withOpacity(0.5))),
    );
  }
}
