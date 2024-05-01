// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/navigator_sc2.dart';



class Sc1 extends StatefulWidget {
  const Sc1({super.key});

  @override
  State<Sc1> createState() => _Sc1State();
}

class _Sc1State extends State<Sc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 80,
              color: Colors.amber,
              child: Text("Screen 1")),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (ctx){
                    return Sc2();
                  }));
                },
                 child: Text("Go to screen 2")),
            ),
          ],
        ),
      ),
    );
  }
}