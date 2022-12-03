import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const <Widget>[
             Icon(Icons.airplanemode_active,size: 160.0,color: Colors.white),
             Text("Secund Tab",style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}