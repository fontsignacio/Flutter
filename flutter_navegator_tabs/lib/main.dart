import 'package:flutter/material.dart';
import 'package:flutter_navegator_tabs/pages/first.dart';
import 'package:flutter_navegator_tabs/pages/secund.dart';
import 'package:flutter_navegator_tabs/pages/third.dart';

void main() {
  runApp(const MaterialApp(
    home: MyNavegator(),
  ));
}

class MyNavegator extends StatefulWidget {
  const MyNavegator({super.key});

  @override
  State <MyNavegator> createState() => MyNavegatorState();
}

class  MyNavegatorState extends State <MyNavegator> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
  void initState(){
    super.initState();
    controller =  TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text("Bottom Navegation Bar", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          FirstTab(), 
          SecundTab(),
          ThirdTab() ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          tabs:const  <Tab>[
          Tab(
            icon: Icon(Icons.alarm, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.watch_later, color: Colors.black),
          ),
          Tab(
            icon: Icon(Icons.airplanemode_active, color: Colors.black),
          ),          
          ],
          controller: controller,
        ),
      ),
    );
  }
}
