// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListAndMap extends StatefulWidget {
  const ListAndMap({super.key});

  @override
  State<ListAndMap> createState() => _ListAndMapState();
}

class _ListAndMapState extends State<ListAndMap> {

  List a=[
    {'name': 'manjima', 'mobile': 1234567890, 'service': 'electrical'},
    {'name': 'meenu', 'mobile': 76346739780, 'service': 'mechanical'},
    {'name': 'aarya', 'mobile': 9134567890, 'service': 'electrical'},
    {'name': 'sreya', 'mobile': 8564567890, 'service': 'mechanical'},
    {'name': 'theertha', 'mobile': 897667890, 'service': 'electrical'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
       leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 10,
        ),
      ),
      
      body:ListView.builder(
        itemCount: a.length,
        itemBuilder: (ctx,index){
            return Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 13),
              child: (
                Container(
                  color: Colors.blue[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/images/free-images.jpg',
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text(a[index]["name"]),
                      ),
                      subtitle: Column(
                        children: [
                          Text(a[index]["mobile"].toString()),
                          Text(a[index]["service"])
                        ],
                      ),
                    ),
                  )
                )
              ),
            );
        }) ,

      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label: "Home"
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.payment),
            label: "payment"
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.notification_add),
            label: "Notification"
            ),
        ]

        ),
    );
  }
}