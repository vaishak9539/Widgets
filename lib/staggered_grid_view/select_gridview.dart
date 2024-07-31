// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/staggered_grid_view/aligned_gridview.dart';
import 'package:widgets/staggered_grid_view/masonry_gridview.dart';
import 'package:widgets/staggered_grid_view/quilted_gridview.dart';
import 'package:widgets/staggered_grid_view/staggered_gridview.dart';
import 'package:widgets/staggered_grid_view/staired_gridview.dart';
import 'package:widgets/staggered_grid_view/woven_gridview.dart';

class SelectedGridView extends StatefulWidget {
  const SelectedGridView({super.key});

  @override
  State<SelectedGridView> createState() => _SelectedGridViewState();
}

class _SelectedGridViewState extends State<SelectedGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MasonryGridViewEX(),));
                      }, child: Text("MasonryGridView",style: TextStyle(fontSize:16 , color: Colors.black),)),
                      
                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => AlignedGridViewEX(),));
                      }, child: Text("AlignedGridView",style: TextStyle(fontSize:16 , color: Colors.black),)),
                    
                    TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => QuiltedGridViewEX(),));
                      }, child: Text("QuiltedGridView",style: TextStyle(fontSize:16 , color: Colors.black),)),

                       TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => StaggeredGridViewEX(),));
                      }, child: Text("StaggeredGridView",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => WovenGridViewEX(),));
                      }, child: Text("WovenGridView",style: TextStyle(fontSize:16 , color: Colors.black),)),

                      TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => StairedGridViewEX(),));
                      }, child: Text("StairedGridView",style: TextStyle(fontSize:16 , color: Colors.black),)),
          ],
        ),
      ),
    );
  }
}