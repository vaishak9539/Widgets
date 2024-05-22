// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/coustom/coustom_text.dart';
import 'package:widgets/coustom/coustom_textfiled.dart';
import 'package:widgets/coustom/custom_button.dart';

class Cheking extends StatefulWidget {
  const Cheking({super.key});

  @override
  State<Cheking> createState() => _ChekingState();
}

class _ChekingState extends State<Cheking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Vaishak",
              color: Colors.green,
              size: 20,
              weight: FontWeight.bold,
            ),


          CustomTextField(
            labelText: "Enter your name",
            onChanged: (value) {
              
            },
          ),
          CustomButton1(
            onPressed: () {
              
            },
            text: "hi",
            backgroundColor: Colors.blue,
            textColor: Colors.white,
          )

          ],
        ),
      ) ,
    );
  }
}