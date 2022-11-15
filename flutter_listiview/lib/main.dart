import 'package:flutter/material.dart';
import 'package:flutter_listiview/contact.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Contactos"),
      ),
      body:  const Contact(),
    ),
  ));
}
