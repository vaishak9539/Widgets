// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPre extends StatefulWidget {
  const SharedPre({super.key});

  @override
  State<SharedPre> createState() => _SharedPreState();
}

class _SharedPreState extends State<SharedPre> {
  var controllerName = TextEditingController();
  var controllerDepartment = TextEditingController();
  var controllerPhone = TextEditingController();
  var controllerEmail = TextEditingController();
  var controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Name",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20),
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(
                    controller: controllerName,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Department",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20),
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(
                    controller: controllerDepartment,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Phone",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20),
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(
                    controller: controllerPhone,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20),
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(
                    controller: controllerEmail,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 20),
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(
                    controller: controllerPassword,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              InkWell(
                onTap: () async {
                  SharedPreferences spref =
                      await SharedPreferences.getInstance();
                  spref.setString("Name", controllerName.text);
                  spref.setString("Department", controllerDepartment.text);
                  spref.setString("Phone", controllerPhone.text);
                  spref.setString("Email", controllerEmail.text);
                  spref.setString("Password", controllerPassword.text);

                  var name = spref.getString('Name');
                  var department = spref.getString('Department');
                  var phone = spref.getString('Phone');
                  var email = spref.getString('Email');
                  var password = spref.getString('Password');

                  print(name);
                  print(department);
                  print(phone);
                  print(email);
                  print(password);
                },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
