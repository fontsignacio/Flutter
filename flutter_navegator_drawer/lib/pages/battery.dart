import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
static const String routeName = "/battery";

  const Battery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.lightGreen,
      ),
      body: const Center(
        child: Text("Battery Screen"),
      ),
    );
  }
}