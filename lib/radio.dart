// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Radi extends StatefulWidget {
  const Radi({super.key});

  @override
  State<Radi> createState() => _RadiState();
}

class _RadiState extends State<Radi> {
  String Genter = ("");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 180,
                  child: RadioListTile(
                    title: Text("Male"),
                    value: "Male",
                    groupValue: Genter,
                    onChanged: (value) {
                      setState(() {
                        Genter = value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: RadioListTile(
                    title: Text("Female"),
                    value: "Female",
                    groupValue: Genter,
                    onChanged: (value) {
                      setState(() {
                        Genter = value.toString();
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: RadioListTile(
                    title: Text("Other"),
                    value: "Other",
                    groupValue: Genter,
                    onChanged: (value) {
                      setState(() {
                        Genter = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
