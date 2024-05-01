// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBar1 extends StatefulWidget {
  const RatingBar1({super.key});

  @override
  State<RatingBar1> createState() => _RatingBar1State();
}

class _RatingBar1State extends State<RatingBar1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RatingBar.builder(
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 7,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (ctx,_){
              return const Icon(
              Icons.star,
              color: Colors.amber,
                    );
                    },
                    onRatingUpdate: (rating) {
              print(rating);
                    },
                  ),
            ),
          ],
        ));
  }
}
