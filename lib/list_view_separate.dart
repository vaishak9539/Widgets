// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class Separater extends StatefulWidget {
  const Separater({super.key});

  @override
  State<Separater> createState() => _SeparaterState();
}

class _SeparaterState extends State<Separater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 135, 86),
        title:const Text("Watsapp",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
          ),
        ),

        actions:const [
          Padding(
            padding: EdgeInsets.only(right: 28),
            child: Icon(
              Icons.camera_alt_rounded,
            color: Colors.white,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(
              Icons.search,
              color:Colors.white ,
              ),
          ),

            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
              Icons.more_vert,
              color:Colors.white ,
              ),
            )
        ],
      ),

      body: Column(
        children: [
          Row(
          
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  color: Color.fromARGB(255, 29, 135, 86),
          
                  child:const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Padding(
                         padding: EdgeInsets.only(left: 10),
                         child: Icon(
                          Icons.groups_3_rounded,
                          color: Colors.white,
                          ),
                       ),
          
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text("Chats",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                          ),
                        ),
                      ),
          
                      Padding(
                        padding: EdgeInsets.only(left: 75),
                        child: Text("Updates",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                          ),
                        ),
                      ),
          
                      Padding(
                        padding: EdgeInsets.only(left: 75),
                        child: Text("Chats",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                          ),
                        ),
                      ),
          
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
                separatorBuilder: (ctx,index){
                  return Divider();
                },
               itemBuilder: (context,index){
                
               return ListTile(
                  title: Text("athul"),
                  subtitle: Text("hi"),
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/images/free-images.jpg"),),
                  trailing: Column(
                    children: [
                      Text("10.10"),
                      Container(
                        child: Center(
                          child: Text("10",
                          style: TextStyle(color: Colors.white),
                          ),
                        ),
                        height: 20,
                        width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.green[700],
                        
                        ),
                      )
                    ],
                  ),
                );
               },
            ),
          )
        ],
      ),
    );
  }
}

// ListView.Builder (item builder Required aan)

// ListView.separated ( itemCount, separatorBuilder, item builder, Required aan)