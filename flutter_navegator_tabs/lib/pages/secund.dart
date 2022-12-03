import 'package:flutter/material.dart';

class SecundTab extends StatelessWidget {
  const SecundTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.watch_later,size: 160.0,color: Colors.white),
            Text("Secund Tab",style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}