// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/staggered_grid_view/aligned_gridview.dart';
import 'package:widgets/staggered_grid_view/masonry_gridview.dart';
import 'package:widgets/staggered_grid_view/quilted_gridview.dart';

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
          ],
        ),
      ),
    );
  }
}