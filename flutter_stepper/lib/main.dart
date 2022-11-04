import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text ("Demo Stepper"),
      ),
      body: new Container(
          child: new Stepper(
            currentStep: this._currentStep,
            steps: [
              new Step(title: new Text ("Paso 1"), content: new Text ("Aprender Flutter")),
              new Step(title: new Text ("Paso 2"), content: new Text ("Desarrollar Aplicacion")),
              new Step(title: new Text ("Paso 3"), content: new Text ("Publicar Aplicacion"))
            ],
            type: StepperType.vertical,
            onStepCancel: () {
              setState(() {
                if (_currentStep > 0)_currentStep--;
                else _currentStep = 0;
              });
            },
            onStepTapped: (Step) {
              setState(() {
                _currentStep= Step;
              });
            },
            onStepContinue: () {
              setState(() {
                if (_currentStep < 2) _currentStep++;
                else _currentStep = 0;
              });
            },
          ),        
        )
      );
  }
}