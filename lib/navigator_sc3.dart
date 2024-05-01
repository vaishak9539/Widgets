// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/navigator_sc1.dart';

class Sc3 extends StatefulWidget {
  const Sc3({super.key});

  @override
  State<Sc3> createState() => _Sc3State();
}

class _Sc3State extends State<Sc3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          children: [
            Text("Screen 3"),
            ElevatedButton(
              onPressed: (){},
               child: Text("Go to screen 4")),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx){
                  return Sc1();
                }));
              }, child: Text("data"))
          ],
        ),
      ),
    );
  }
}