// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WovenGridViewEX extends StatefulWidget {
  const WovenGridViewEX({super.key});

  @override
  State<WovenGridViewEX> createState() => _WovenGridViewEXState();
}

class _WovenGridViewEXState extends State<WovenGridViewEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Woven  Grid View Example',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 5, top: 5, right: 5),
        child: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            pattern: [
              WovenGridTile(1),
              WovenGridTile(
                5 / 7,
                crossAxisRatio: 0.9,
                alignment: AlignmentDirectional.centerEnd,
              ),
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
