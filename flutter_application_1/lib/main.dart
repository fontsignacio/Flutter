import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "Mi Primera aplicacion",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Mi Primera aplicacion")
        ),
        body: new Container(
          child: new Center(
            child: new Text("Hello World"),
          ),
        ),
      ),
    )
  );
}


