import 'package:flutter/material.dart';
class Texts extends StatelessWidget {
  const Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget Text1(String content, {required TextStyle style}) {
  return Text(
    content,
    style: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  );
}