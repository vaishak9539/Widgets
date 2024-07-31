// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class CircularMenuEX extends StatefulWidget {
  const CircularMenuEX({super.key});

  @override
  State<CircularMenuEX> createState() => _CircularMenuEXState();
}

class _CircularMenuEXState extends State<CircularMenuEX> {
  String controllerName = "No";
  var _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return CircularMenu(
        backgroundWidget: Center(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 28),
                  children: [
                TextSpan(
                  text: controllerName,
                  style: TextStyle(color: _color, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: " button clik",
                  style: TextStyle(color: Colors.white, ),
                )
              ])),
        ),
        items: [
          CircularMenuItem(
            icon: Icons.home,
            color: Colors.green,
            onTap: () {
              setState(() {
                _color = Colors.green;
                controllerName = "green";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.search_rounded,
            color: Colors.blue,
            onTap: () {
              setState(() {
                _color = Colors.blue;
                controllerName = "blue";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.settings,
            color: Colors.orange,
            onTap: () {
              setState(() {
                _color = Colors.orange;
                controllerName = "orange";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.chat,
            color: Colors.purple,
            onTap: () {
              setState(() {
                _color = Colors.purple;
                controllerName = "purple";
              });
            },
          ),
          CircularMenuItem(
            icon: Icons.notifications,
            color: Colors.brown,
            onTap: () {
              setState(() {
                _color = Colors.brown;
                controllerName = "brown";
              });
            },
          )
        ]);
  }
}
