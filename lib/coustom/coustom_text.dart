import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;
  final Color color;

  const CustomText({
    super.key,
    required this.size,
    required this.weight,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: size,
          fontWeight: weight,
          color: color,
        ));
  }
}
