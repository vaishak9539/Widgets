// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExpansionTileEx extends StatefulWidget {
  const ExpansionTileEx({super.key});

  @override
  State<ExpansionTileEx> createState() => _ExpansionTileExState();
}

class _ExpansionTileExState extends State<ExpansionTileEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'ExpansionTile',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ExpansionTile(
        title: Text("See more"),
        children: [
          ListTile(
            title: Text("First"),
          ),
          ListTile(
            title: Text("Secont"),
          ),
          ListTile(
            title: Text("third"),
          ),
          ListTile(
            title: Text("Fourth"),
          ),
        ],
      ),
    );
  }
}
