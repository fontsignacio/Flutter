import 'package:flutter/material.dart';

class Contact extends StatelessWidget{
  const Contact({super.key});

  @override
  Widget build(BuildContext context){
    return  Column(
      children: const <Widget>[
          Icon(Icons.contacts,size: 170.0,color: Colors.amberAccent),    
          Text("Tercer Tab"),
      ],
    );
  }
}