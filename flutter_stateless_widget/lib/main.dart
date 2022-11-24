import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    const double iconSize = 40.0;
    const TextStyle textStyle = TextStyle(
      color: Colors.grey, fontSize: 30.0
    );   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Widget"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            MyCard(title: Text("I love flutter", style: textStyle), 
            icon: Icon(Icons.favorite, size: iconSize, color: Colors.redAccent)),
            MyCard(title: Text("I like this programing",style: textStyle), 
            icon: Icon(Icons.thumb_up,size: iconSize, color: Colors.blueAccent)),
            MyCard(title: Text("Next Video", style: textStyle), 
            icon: Icon(Icons.queue_play_next,size: iconSize,color: Colors.brown))
          ],
       ),
      ),
    );
  }
}


class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;
  
  const MyCard({super.key, required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[this.title,this.icon]
          ),  
        ), 
      ),
    );
  }
}