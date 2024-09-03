// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: Text("Clik")),

                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.message),
                  //! foregroundColor: Colors.white,
                  //! backgroundColor: Colors.black,

                  //! shape: RoundedRectangleBorder(
                  //! borderRadius: BorderRadius.circular(30),
                  //! ),

                  //! tooltip: "Messages",
                ),

                ElevatedButton(onPressed: () {}, child: Text("send")),

                IconButton(onPressed: () {}, icon: Icon(Icons.call)),

                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
                
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Share"),
                  icon: Icon(Icons.share),
                ),
              ]),
        ),
      ),
    );
  }
}
