// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/navigator_sc1.dart';
import 'package:widgets/navigator_sc3.dart';

class Sc2 extends StatefulWidget {
  const Sc2({super.key});

  @override
  State<Sc2> createState() => _Sc2State();
}

class _Sc2State extends State<Sc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Screen 2"),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx){
                    return Sc3();
                },),);
              },
               child: Text("Go to screen 3")),

               ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx){
                  return Sc1();
                }));
               },
                child: Text("Go back"))
          ],
        ),
      ),
    );
  }
}