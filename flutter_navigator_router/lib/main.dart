import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new First(),
  ));  
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Primera Pantalla Screen"),
      ),
      body: new Center(
        child: new ElevatedButton(onPressed: () {
          Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new Second()));  
        },
        child: new Text("Mostar Pantalla")),
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: new AppBar(
        title: new Text("Segunda Pantalla Screen"),
      ),
      body: new Center(
        child: new ElevatedButton(onPressed: () {
          Navigator.pop(context); 
        },
        child: new Text("Volver")),
      ),
    );
  }
}