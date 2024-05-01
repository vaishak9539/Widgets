// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ListT extends StatefulWidget {
  const ListT({super.key});

  @override
  State<ListT> createState() => _ListTState();
}

class _ListTState extends State<ListT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 29, 135, 86),
          title: const Text(
            "whatsApp",
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ]),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 50,
                    color: Color.fromARGB(255, 29, 135, 86),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.groups_3_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Row(
                            children: [
                              Text("Chats",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Center(child: Text("22")),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Row(
                                  children: [
                                    Text(
                                      "Updates",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Icon(
                                        Icons.circle_rounded,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  "Calls",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
          Expanded(
              child: ListView(
            children: [
              ListTile(
                title: Text("Jon Snow"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://hdqwalls.com/wallpapers/jon-snow-game-of-thrones-2017-pa.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Arya Stark"),
                subtitle: Text("hw"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://images.hdqwalls.com/wallpapers/arya-stark-game-of-thrones-season-8-y3.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.15PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("1",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Sansa Stark"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://c4.wallpaperflare.com/wallpaper/575/362/331/tv-show-game-of-thrones-sansa-stark-sophie-turner-hd-wallpaper-preview.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("11.30PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("2",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Damon Salvatore"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/originals/2e/8a/a4/2e8aa4d5d945a4e0b332bbde454456f9.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("klaus Mikaelson"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://w0.peakpx.com/wallpaper/267/415/HD-wallpaper-the-originals-klaus-smiling-face-klaus-mikaelson.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Caroline"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://static1.srcdn.com/wordpress/wp-content/uploads/2021/02/Vampire-Diaries-Caroline-Forbes.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Elijah Mikaelson"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://pbs.twimg.com/media/FKr_crZXEAMiS76.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Davina Claire"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/736x/fa/72/3e/fa723e9822a92d2bc4586a9e9f2ae8a7.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Hayley"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/736x/3d/8f/15/3d8f150ce2879875bf5b8e7612136d91.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        ),
                      ),
                    ),
                    
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Marcel"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://i.pinimg.com/736x/97/79/77/9779775b85a37e6c4575c3dbaae46e14.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),

              ListTile(
                title: Text("Camille"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://images6.fanpop.com/image/photos/39100000/image-camille-oconnell-39119227-500-750.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
               ListTile(
                title: Text("Rebekah Mikaelson"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://everydaypower.com/wp-content/uploads/2023/02/Rebekah-Mikaelson-Quotes-From-The-Vampire-Diaries.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
              ListTile(
                title: Text("Max"),
                subtitle: Text("Hi"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://i.redd.it/90p127efh1w91.jpg")),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("10.10PM"),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(width: 20,
                      height: 20,
                      child: Center(
                        child: Text("12",
                        style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 29, 135, 86),
                        
                        ),
                      ),
                    )
                  ],
                ),
                
              ),
            ],
          )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
        ),
      
    );
  }
}
