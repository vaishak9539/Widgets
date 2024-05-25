import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgets/sharedpreference/prefs_home.dart';

class PrefsLogin extends StatefulWidget {
  const PrefsLogin({super.key});

  @override
  State<PrefsLogin> createState() => _PrefsLoginState();
}

class _PrefsLoginState extends State<PrefsLogin> {

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
        child: TextButton(onPressed: () {
          getvalue;
          Navigator.push(context, MaterialPageRoute(builder: (context) => PrefsHome(),));
        },
        child: Text("Login"),
        ),
      ),
    );
  }
}