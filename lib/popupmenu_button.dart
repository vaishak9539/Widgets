// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class PopupMenuButtonEx extends StatefulWidget {
  const PopupMenuButtonEx({super.key});

  @override
  State<PopupMenuButtonEx> createState() => _PopupMenuButtonExState();
}

class _PopupMenuButtonExState extends State<PopupMenuButtonEx> {
  String titile = "PopupMenuButton";
  String firstpage = "First page";
  String secontpage = "secont page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
        title: Text(
          titile,
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          PopupMenuButton(
            
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(firstpage),
                  value: firstpage,
                  // onTap: ,
                ),
                PopupMenuItem(
                  child: Text(secontpage),
                  value: secontpage,
                  // onTap: ,
                ),
                PopupMenuItem(
                  child: Text("PMP"),
                  value: "PMP",
                )
              ];
            },
            onSelected: (value) {
              setState(() {
                titile = value;
              });
            },
            
          )
        ],
      ),
    );
  }
}
