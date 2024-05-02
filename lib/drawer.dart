// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Learn Flutter",style: TextStyle(
          color: Colors.white,
          ),
          ),

          // *Center Title
          centerTitle: true,

          // *BackgroundColor
        backgroundColor: Colors.deepPurple,

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],

        //* Shape
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
        ),

        // * Elevation
        elevation: 30,

      ),
      body: Center(
        child: Card(
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Home page"),
          ))
        ),

        drawer: Drawer(
          child: ListView(
            children:  [
              UserAccountsDrawerHeader(accountName: Text("Vaishak"),
               accountEmail: Text("Vaishakp17@gmail.com"),
               currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/free-images.jpg"),
               ),
               ),

                ListTile(
              leading: const Icon(Icons.person),
              title: const Text('My Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),

             ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('favorite',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),

             ListTile(
              leading: const Icon(Icons.update),
              title: const Text('update',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
            
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),

            // *Divider
             Divider(color: Colors.black26),

            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: const Text('About',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
            
             ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            ),
            ],
          ),
        ),
    );
  }
}