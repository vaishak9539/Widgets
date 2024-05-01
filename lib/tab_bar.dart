// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:widgets/navigator_sc1.dart';
import 'package:widgets/navigator_sc2.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "TabPage Bar",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TabBar(labelStyle: TextStyle(), labelColor: Colors.amber, tabs: [
              Tab(
                text: 'asd',
              ),
              Tab(text: "Status"),
            ]),
            Expanded(
              child: TabBarView(children: [Center(child: Sc1()), Sc2()]),
            )
          ],
        ),
      ),
    );
  }
}
