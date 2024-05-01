// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:widgets/snack_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {




  // 'inistate' one time mathrame call cheyyullu, pinne eth call cheyyilla.pinne eth rebuild cheyyumbol call varunnath 'didChangeDependencie' yilekk aan
  @override
  void initState() {
    goToLogin();      // mukalil ulla Future function (goToLogin) ne first call cheyyunnu
    super.initState();
  }
     Future<void> goToLogin() async {
    await  Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => Snackbar1()));
  }

 
 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      body: Center(
        child: Text("Splash",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        )
      ),
    );
  }
}
