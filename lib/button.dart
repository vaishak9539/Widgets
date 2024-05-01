import 'package:flutter/material.dart';

class But extends StatefulWidget {
  const But({super.key});

  @override
  State<But> createState() => _ButState();
}

class _ButState extends State<But> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: Text("Clik")),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.message),
                  //! foregroundColor: Colors.white,
                  //! backgroundColor: Colors.black,

                  //! shape: RoundedRectangleBorder(
                  //! borderRadius: BorderRadius.circular(30),
                  //! ),

                  //! tooltip: "Messages",
                ),
                ElevatedButton(onPressed: () {}, child: Text("send")),
                IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Share"),
                  icon: Icon(Icons.share),
                ),
              ]),
        ),
      ),
    );
  }
}
