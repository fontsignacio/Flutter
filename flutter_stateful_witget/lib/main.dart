import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Ignacio','Esteban','Fonts'];
  
  void onPressButton(){
    setState(() {
      flutterText = collections[index];
      index = index < collections.length - 1 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(flutterText, style: const TextStyle(fontSize: 40.0)),
          const Padding(padding: EdgeInsets.all(10.0)),
          ElevatedButton(
            onPressed: onPressButton,
            child: const Text("Actualizar", style: TextStyle(color: Colors.white)), 
          ),
        ],
      ),
      ),
    );
  }
}