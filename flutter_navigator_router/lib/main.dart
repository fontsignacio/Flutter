import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: First(),
  ));  
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Display Screen"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Second()));  
        },
        child:const  Text("View Display")),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Second Display Screen"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context); 
        },
        child: const Text("Back")),
      ),
    );
  }
}