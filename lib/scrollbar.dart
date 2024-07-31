import 'package:flutter/material.dart';

class ScrollBarEx extends StatefulWidget {
  const ScrollBarEx({super.key});

  @override
  State<ScrollBarEx> createState() => _ScrollBarExState();
}

class _ScrollBarExState extends State<ScrollBarEx> {
  final ScrollController controller =ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E1D3E),
      body: Scrollbar(
        controller: controller,
        child: ListView.builder(
          controller: controller,
          itemCount: 40,
          itemBuilder: (context, index) {
        return ListTile(
          title: Text("Item ${index+1}",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        );
      },)),
    );
  }
}