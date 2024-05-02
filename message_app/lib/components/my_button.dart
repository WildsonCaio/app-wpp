import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;
  Widget router;

  MyButton({super.key, required this.text, required this.router});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => router,
          )),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color.fromARGB(255, 22, 158, 140)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
