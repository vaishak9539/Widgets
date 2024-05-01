// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {

  bool? ischecked1=false;
  bool? ischecked2=false;
  bool? ischecked3=false;
  bool? ischecked4=false;
  void onItemTapped(valu){
   setState(() {
      ischecked1=valu;
   });

   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // *AppBar
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 29, 135, 86),
          title: Text("Check Box",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          centerTitle: true,
           actions: [
            
            IconButton(onPressed: (){},
             icon: Icon(Icons.search,
              color: Colors.white
             )),
            IconButton(onPressed: (){},
             icon: Icon(Icons.more_vert,
              color: Colors.white
             ))
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(22)
              ),
              ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("True",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Checkbox(
                    tristate: true,
                    value: ischecked1,
                   onChanged: onItemTapped
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("False",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Checkbox(value: ischecked2,
                  activeColor: Colors.red,
                  checkColor: Colors.black,
                   onChanged: (val){
                    setState(() {
                      ischecked2=val;
                    });
                   }
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 8,right: 8),
                child: CheckboxListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)),
                  title: Text("Double-Tap to lock",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.green[400],
                  subtitle: Text("Double-tap any empty space on the home screen to lock the screen"),
                  value: ischecked3,
                onChanged: (val){
                  setState(() {
                    ischecked3=val;
                  });
                }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 8,right: 8),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                    title: Text("App animation speed",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tileColor: Colors.yellow[400],
                    subtitle: Text("Adjust the speed of appstartup and closing animations"),
                    value: ischecked4,
                  onChanged: (val){
                    setState(() {
                      ischecked4=val;
                    });
                  }),
              ),
            ],
          ),
        )
    );
  }
}