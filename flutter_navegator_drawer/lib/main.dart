import 'package:flutter/material.dart';
import 'package:flutter_navegator_drawer/pages/homes.dart';
import 'package:flutter_navegator_drawer/pages/battery.dart';
import 'package:flutter_navegator_drawer/pages/settings.dart';

void main(){
  runApp(new MaterialApp(
    home: Home(),
    routes: <String, WidgetBuilder>{
      Settings.routeName: (BuildContext context) => new Settings(),
      Battery.routeName: (BuildContext context) => new Battery(),
    }
  ));
}
