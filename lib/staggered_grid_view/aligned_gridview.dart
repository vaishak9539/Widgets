// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AlignedGridViewEX extends StatefulWidget {
  const AlignedGridViewEX({super.key});

  @override
  State<AlignedGridViewEX> createState() => _AlignedGridViewEXState();
}

class _AlignedGridViewEXState extends State<AlignedGridViewEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Aligned Grid View Example',
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
  return AlignedGridView.count(
    // gridDelegate:
    //     SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    itemCount: 42,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    crossAxisCount: 3,
    itemBuilder: (context, index) {
      return SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            // imageUri[index],
            "http://source.unsplash.com/random?sig=$index", fit: BoxFit.cover,
          ),
        ),
      );
    },
  );
}
