import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text ("Steper"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Stepper(
        // ignore: unnecessary_this
        currentStep: this._currentStep,
        // ignore: prefer_const_literals_to_create_immutables
        steps: [
          const Step(title:  Text ("Step 1"), content:  Text ("Learn Flutter")),
          const Step(title:  Text ("Step 2"), content:  Text ("Develop Apps")),
          const Step(title:  Text ("Step 3"), content:  Text ("Post App"))
        ],
        type: StepperType.vertical,
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep--;
            } 
            else {
              _currentStep = 0;
            }
          });
        },
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        onStepTapped: (Step) {
          setState(() {
            _currentStep= Step;
          });
        },
        onStepContinue: () {
          setState(() {
            if (_currentStep < 2) {
              _currentStep++;
            } 
            else{
              _currentStep = 0;  
            } 
          });
        },
      )
    );
  }
}