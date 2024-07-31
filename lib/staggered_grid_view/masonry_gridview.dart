// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MasonryGridViewEX extends StatefulWidget {
  const MasonryGridViewEX({super.key});

  @override
  State<MasonryGridViewEX> createState() => _MasonryGridViewEXState();
}

class _MasonryGridViewEXState extends State<MasonryGridViewEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Masonry Grid View Example',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5,top: 5,right: 5,bottom: 5),
        child: masonryLayout(context)),
    );
  }
}

Widget masonryLayout(BuildContext context) {
  return MasonryGridView.builder(
    gridDelegate:
        SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemCount: 20,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    itemBuilder: (context, index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          // imageUri[index],
          "http://source.unsplash.com/random?sig=$index"
        ),
      );
    },
  );
}
