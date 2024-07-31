// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Hero Widget',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
         body:  Center(
           child: SafeArea(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.blue[100],
                  child: ListTile(
                    leading: GestureDetector(
                      onTap: () => Secontpage(context),
                      child: Hero(
                        tag: "tag",
                       child: CircleAvatar(
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1716369415994-951cc6d85578?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                       )
                       ),
                    ),
                    title: Text("Click on the image"),
                  ),
                )
              ],
                   ),
           ),
         ),
       );
  }
}
void Secontpage (BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(
    backgroundColor: Colors.black,
    body: Center(
      child: Hero(
        tag: "tag",
         child: Image.network("https://images.unsplash.com/photo-1716369415994-951cc6d85578?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
         ),
    ),
  ),
  ));
}