// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Snackbar1 extends StatefulWidget {
  const Snackbar1({super.key});

  @override
  State<Snackbar1> createState() => _Snackbar1State();
}

class _Snackbar1State extends State<Snackbar1> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var username;
  var password;

  void checkLogin() {
    username = usernameController.text;
    password = passwordController.text;
    if (username == password) {
    } else {
      //SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
            backgroundColor: Colors.amber[400],
            content: Text("Username Password Doesnot Match")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                  labelText: "User Name", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: TextFormField(
              controller: passwordController,
              obscureText: true, //password hide cheyyan
              decoration: InputDecoration(
                  labelText: "Password", border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                onPressed: () {
                  checkLogin();
                },
                child: Text("Login")),
          )
        ],
      ),
    ));
  }
}
