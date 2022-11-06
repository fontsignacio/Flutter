import 'package:flutter/material.dart';
import 'package:flutter_navegator_tabs/pages/first.dart';
import 'package:flutter_navegator_tabs/pages/secund.dart';
import 'package:flutter_navegator_tabs/pages/third.dart';

void main() {
  runApp(new MaterialApp(
    home: MyNavegator(),
  ));
}

class MyNavegator extends StatefulWidget {
  @override
  MyNavegatorState createState() => new MyNavegatorState();
}

class  MyNavegatorState extends State <MyNavegator> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Bottom Navegation Bar"),
      ),
      body: new TabBarView(
        children: <Widget>[
          new FirstTab(), 
          new SecundTab(),
          new ThirdTab()],
          controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
            icon: new Icon(Icons.alarm),
          ),
          new Tab(
            icon: new Icon(Icons.watch_later),
          ),
          new Tab(
            icon: new Icon(Icons.airplanemode_active),
          ),          
          ],
          controller: controller,
        ),
      ),
    );
  }
}
