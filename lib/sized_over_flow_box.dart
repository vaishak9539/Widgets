// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OverFlowBoxEX extends StatefulWidget {
  const OverFlowBoxEX({super.key});

  @override
  State<OverFlowBoxEX> createState() => _OverFlowBoxEXState();
}

class _OverFlowBoxEXState extends State<OverFlowBoxEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E1D3E),
      body: Center(
        child: Container(
          color: Colors.amber,
          child: SizedOverflowBox(size: Size(100, 100),
          child: ElevatedButton(onPressed: (){},
           child: Text("This is a button")),
          ),
        ),
      ),
    );
  }
}