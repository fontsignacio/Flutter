import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatefulWidget {
  const MySnackBar({super.key});

  @override
  State<MySnackBar> createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Demo"),
        backgroundColor: Colors.indigoAccent,
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // ignore: sort_child_properties_last
      child:const  Text("Open Up SnackBar"),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text("Hi!! I am a SnackBar"),
          backgroundColor: Colors.indigoAccent,
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
            label: "Click",
            textColor: Colors.white,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Others Users Information"),
              backgroundColor: Colors.indigoAccent,
              duration: Duration(seconds: 5)),
            );}),
          )
        );
      },
      style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, 
      backgroundColor: Colors.redAccent,
  ),
    );
  }
}