// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {

  void showAlertdialog(){
    showDialog(context: context, builder: (ctx){
      return AlertDialog(
        title: Text("Confirm Exit"),
        content: Text("are you sure you want to exit"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          },
           child: Text("ok"),
           ),
        ],
      );
    });
    
  }
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          showAlertdialog();
        }, child: Text("Alert Dialog")),
      ),

    );
  }
}