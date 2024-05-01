// ignore_for_file: prefer_const_constructors, avoid_print, unrelated_type_equality_checks, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  var b;
  var d;
  void pickTime(){
    setState(() {
      selectedTime = b;
    });
  }
  void pickDate(){
    setState(() {
      selectDate = d;
    });
  }
  DateTime? selectDate;
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(children: [
                  ElevatedButton(
                      onPressed: () async {
                        d = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1999, 1, 1),
                            lastDate: DateTime(2100, 1, 1));
                        pickDate();
                      },
                      child: Text('Date')),
                      Text(selectDate != null ? DateFormat('dd-MM-yyyy').format(d): '')
                ]),
              ),
              Container(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          
                          b = await showTimePicker(
                              context: context, initialTime: TimeOfDay.now());
                              pickTime();
                          
                        },
                        
                        child: Text('Time')),
                        Text(selectedTime != null ? selectedTime!.format(context) : '')
                  ],
                ),
                    
              ),
            ],
          ),
        ),
      ),
    );
  }
}