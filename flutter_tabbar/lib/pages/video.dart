import 'package:flutter/material.dart';

class Video extends StatelessWidget{
  const Video({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children:const <Widget>[
        Icon(Icons.ondemand_video,size: 170.0,color: Colors.greenAccent),
        Text("Segundo Tab"),
      ],
    );
  }
}