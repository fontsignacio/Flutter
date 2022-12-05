import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String routeName = "/setting";

  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Settings"),
        backgroundColor: Colors.lightGreen,
      ),
      body:const Center(
        child: Text("Setting Screen"),
      ),
    );
  }
}