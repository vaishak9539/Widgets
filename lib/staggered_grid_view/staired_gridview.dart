// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StairedGridViewEX extends StatefulWidget {
  const StairedGridViewEX({super.key});

  @override
  State<StairedGridViewEX> createState() => _StairedGridViewEXState();
}

class _StairedGridViewEXState extends State<StairedGridViewEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Staired Grid View Example',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
        child: GridView.custom(
          gridDelegate: SliverStairedGridDelegate(
            crossAxisSpacing: 48,
            mainAxisSpacing: 24,
            startCrossAxisDirectionReversed: true,
            pattern: [
              StairedGridTile(0.5, 1),
              StairedGridTile(0.5, 3 / 4),
              StairedGridTile(1.0, 10 / 4),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.network(
                // imageUri[index],
                "http://source.unsplash.com/random?sig=$index", fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
