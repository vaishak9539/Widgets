// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsHome extends StatefulWidget {
  const PrefsHome({super.key});

  @override
  State<PrefsHome> createState() => _PrefsHomeState();
}

class _PrefsHomeState extends State<PrefsHome> {
  String? name;
  String? department;
  String? phone;
  String? email;
  String? password;

  Future<void> getvalue() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      name = spref.getString('Name');
      department = spref.getString('Department');
      phone = spref.getString('Phone');
      email = spref.getString('Email');
      password = spref.getString('Password');
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: getvalue,
              child: Text("Load Data"),
            ),
            if (name != null) Text("Name: $name"),
            if (department != null) Text("Department: $department"),
            if (phone != null) Text("Phone: $phone"),
            if (email != null) Text("Email: $email"),
            if (password != null) Text("Password: $password"),
          ],
        ),
      ),
    );
  }
}
