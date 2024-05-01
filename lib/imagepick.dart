// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imag extends StatefulWidget {
  const Imag({super.key});

  @override
  State<Imag> createState() => _ImagState();
}

class _ImagState extends State<Imag> {
  var size,height,width;
  XFile? pick;
  File?image;

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: ()async{
                
                ImagePicker picker=ImagePicker();
                pick=await picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  image=File(pick!.path);
                });
              },
               child: Text("Pick image")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
            child: Container(
              height: height / 2.5,
              width: width / 1,
              child: image == null
                  ? Center(
                    child: Text(
                        "No files chosen",
                        style: 
                            TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                      ),
                  )
                  : Image.file(image!,fit: BoxFit.cover,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100]),
            ),
          ),
        ],
      ),
    );
  }
}