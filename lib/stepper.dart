// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class StepperEx extends StatefulWidget {
  const StepperEx({super.key});

  @override
  State<StepperEx> createState() => _StepperExState();
}

class _StepperExState extends State<StepperEx> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Stepper',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stepper(
        steps: [
          Step(
            title: Text('Step 1'),
            content: Text('Information for step 1'),
            isActive: currentStep >= 0,
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: Text('Step 2'),
            content: Text('Information for step 2'),
            isActive: currentStep >= 1,
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: Text('Step 3'),
            content: Text('Information for step 3'),
            isActive: currentStep >= 2,
            state: currentStep > 2 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: Text('Step 4'),
            content: Text('Information for step 4'),
            isActive: currentStep >= 3,
            state: currentStep == 3 ? StepState.indexed : StepState.disabled,
          ),
        ],
        onStepTapped: (int newIndex) {
          setState(() {
            currentStep = newIndex;
          });
        },
        onStepContinue: () {
          if (currentStep < 3) {
            setState(() {
              currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() {
              currentStep -= 1;
            });
          }
        },
        currentStep: currentStep,
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          return Row(
            children: <Widget>[
              TextButton(
                onPressed: details.onStepContinue,
                child: Text('Continue'),
              ),
              TextButton(
                onPressed: details.onStepCancel,
                child: Text('Cancel'),
              ),
            ],
          );
        },
      ),
    );
  }
}
