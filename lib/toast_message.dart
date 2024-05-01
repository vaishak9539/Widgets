// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast1 extends StatefulWidget {
  const Toast1({super.key});

  @override
  State<Toast1> createState() => _Toast1State();
}
class _Toast1State extends State<Toast1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(onPressed: (){
           Fluttertoast.showToast(msg: 'Successfully Exit',
           );
          },
           child: Text("Tost message"),
              ),
        ),
      )
    );
  }
}