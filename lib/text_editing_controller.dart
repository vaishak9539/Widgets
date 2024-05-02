// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class TextEditingCon extends StatefulWidget {
  const TextEditingCon({super.key});

  @override
  State<TextEditingCon> createState() => _TextEditingConState();
}

class _TextEditingConState extends State<TextEditingCon> {

  var a=TextEditingController();
  var b=TextEditingController();
  var firstnum;
  var secondnum;
  var total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 70),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: a,
                 decoration: InputDecoration(
                  hintText: "First number",
                  border: OutlineInputBorder()
                 ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: b,
                 decoration: InputDecoration(
                  hintText: "Second number",
                  border: OutlineInputBorder()
                 ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: (){
                setState(() {
                  firstnum=int.parse(a.text);
                  secondnum=int.parse(b.text);
                  total=firstnum+secondnum;
                });
              },
               child: Icon(Icons.add)),
            ),
            total!=null? Text(total.toString()) : Text("add value")
          ],
        ),
      ),
    );
  }
}