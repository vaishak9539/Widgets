// ignore_for_file: prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBar1 extends StatefulWidget {
  const CurvedNavigationBar1({super.key});

  @override
  State<CurvedNavigationBar1> createState() => _CurvedNavigationBar1State();
}

class _CurvedNavigationBar1State extends State<CurvedNavigationBar1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Curved Navigation Bar',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Center(child: Text('Home Page',style: TextStyle(color: Colors.black),)),
          Center(child: Text('Favorite Page',style: TextStyle(color: Colors.black),)),
          Center(child: Text('alaram Page',style: TextStyle(color: Colors.black),)),
          Center(child: Text('Settings Page',style: TextStyle(color: Colors.black),)),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal,
        height: 60,
        
        items: [
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.favorite,color: Colors.white,),
          Icon(Icons.access_alarms_rounded,color: Colors.white,),
          Icon(Icons.settings,color: Colors.white,),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}