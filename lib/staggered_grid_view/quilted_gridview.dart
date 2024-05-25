// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class QuiltedGridViewEX extends StatefulWidget {
  const QuiltedGridViewEX({super.key});

  @override
  State<QuiltedGridViewEX> createState() => _QuiltedGridViewEXState();
}

class _QuiltedGridViewEXState extends State<QuiltedGridViewEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Quilted  Grid View Example',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
          margin: EdgeInsets.only(left: 5, top: 5, right: 5),
          child: masonryLayout(context)),
    );
  }
}

Widget masonryLayout(BuildContext context) {
  return GridView.custom(
  gridDelegate: SliverQuiltedGridDelegate(
    crossAxisCount: 4,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    repeatPattern: QuiltedGridRepeatPattern.inverted,
    pattern: [
      QuiltedGridTile(2, 2),
      QuiltedGridTile(1, 1),
      QuiltedGridTile(1, 1),
      QuiltedGridTile(1, 2),
    ],
  ),
  childrenDelegate: SliverChildBuilderDelegate(
    (context, index) {
      return  ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            // imageUri[index],
            "http://source.unsplash.com/random?sig=$index", fit: BoxFit.cover,
          ),
        );
    }
  ),
);
   
    }
  
