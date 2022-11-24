import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "First App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App")
        ),
        body: Container(
          child: const Center(
            child: Text("Hello World"),
          ),
        ),
      ),
    )
  );
}


