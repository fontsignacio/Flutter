import 'package:flutter/material.dart';
import 'package:flutter_tabbar/pages/home.dart';
import 'package:flutter_tabbar/pages/contact.dart';
import 'package:flutter_tabbar/pages/video.dart';

void main(){
  runApp(const MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  const MyTabs({super.key});

  @override
  State <MyTabs>createState() => _MyTabsState();
}

class _MyTabsState extends State <MyTabs> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Tabs"),
        backgroundColor: Colors.redAccent,
        bottom: TabBar(
          indicatorColor: Colors.lightGreen,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.ondemand_video),
            ),
            Tab(
              icon: Icon(Icons.contacts),
            )
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children:const <Widget>[
          Home(),Video(),Contact(),
        ],
        ),
    );
  }
}