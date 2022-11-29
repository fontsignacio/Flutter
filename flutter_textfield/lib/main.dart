import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  
  String inputValue = "";
  final TextEditingController controller = TextEditingController();
  
  void onSubmitted(String value){
    setState(() {
      inputValue = "$inputValue\n$value";
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EditText Widget",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.limeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(hintText: "Insert your Text here"),
                onSubmitted: (String value) {onSubmitted(value);},
                controller: controller,
              ),
              Text(inputValue),
            ],
          ),
        ),
      ),
    );
  }
}