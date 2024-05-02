import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  String hintText;
  bool obscureText;

  MyInput({
    super.key,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 16,
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: hintText),
      ),
    );
  }
}
