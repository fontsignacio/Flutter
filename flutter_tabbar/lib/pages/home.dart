import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[         
            Icon(Icons.home,size: 170.0,color: Colors.blueAccent),
            Text("Primer Tab"),
          ],
        ),
      ), 
    );    
  }
}