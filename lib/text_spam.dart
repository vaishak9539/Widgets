// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextSpanEX extends StatefulWidget {
  const TextSpanEX({super.key});

  @override
  State<TextSpanEX> createState() => _TextSpanEXState();
}

class _TextSpanEXState extends State<TextSpanEX> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    backgroundColor: Color(0xff0E1D3E),
    body: Center(
      child: Text.rich(
        TextSpan(
          text: "Flutter ",
        style: TextStyle(
          fontSize: 25,
          color: Colors.blueGrey
        ),
        children: [
          TextSpan(
            text: "to the moon!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent
            )
          )
        ]
      )),
    ),
    );
  }
}