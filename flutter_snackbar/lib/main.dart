import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatefulWidget {
  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar Demo"),
      ),
      body: new Center(
        child: new MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ElevatedButton(
      child: new Text("Desplegar SnackBar"),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          content: new Text("Hola Soy un SnackBar"),
          duration: new Duration(seconds: 5),
          action: new SnackBarAction(
            label: "Click",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
              content: new Text("Otros contenidos de Usuario"),
              duration: new Duration(seconds: 5)),
            );}),
          )
        );
      },
    );
  }
}