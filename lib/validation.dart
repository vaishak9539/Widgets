// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets/navigator_sc1.dart';
class Validation1 extends StatefulWidget {
  const Validation1({super.key});

  @override
  State<Validation1> createState() => _Validation1State();
}

class _Validation1State extends State<Validation1> {
  final email = TextEditingController();
  final password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: "enter email", border: OutlineInputBorder()),
                  validator: (inputemail) {
                    if (inputemail == null || inputemail.isEmpty) {
                      return "Please enter your email";
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(inputemail)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      labelText: "enter password",
                      border: OutlineInputBorder(),
                    ),
                    validator: (inputpassword) {
                      if (inputpassword == null || inputpassword.isEmpty) {
                        return "Please enter your email";
                      }if (!RegExp((r'[A-Z]')).hasMatch(inputpassword)) {
                        return 'Uppercase letter is missing';
                      }
                      if (!RegExp((r'[a-z]')).hasMatch(inputpassword)) {
                        return 'Lowercase letter is missing';
                      }
                      if (!RegExp((r'[0-9]')).hasMatch(inputpassword)) {
                        return 'Digit is missing';
                      }
                      if (!RegExp((r'[!@#%^&*(),.?":{}|<>]'))
                          .hasMatch(inputpassword)) {
                        return 'Special character is missing';
                      }if (inputpassword.length < 8) {
                        return "Password must has 8 characters";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return Sc1();
                        }));
                      }
                    },
                    child: Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
