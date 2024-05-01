// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Mquery extends StatefulWidget {
  const Mquery({super.key});

  @override
  State<Mquery> createState() => _MqueryState();
}

class _MqueryState extends State<Mquery> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return   Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 150),
              child: Container(
              child: Center(child: Text("data")),
                height: height/16,
                width: width/1,
                decoration: BoxDecoration(
                   color: Colors.amber,
                   borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height/16,
                width: width/2,
                decoration: BoxDecoration(
                   color: Colors.amber,
                   borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

             
          ],
        ),
      ),
    );
  }
}