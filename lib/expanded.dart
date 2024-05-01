import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({super.key});

  @override
  State<Expand> createState() => _ExpandState();
}

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.red[300],
            ),
          ),
           Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue[300],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.green[300],
            ),
          ),
           Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.yellow[300],
            ),
          ),
        ],
      ),
    );
  }
}