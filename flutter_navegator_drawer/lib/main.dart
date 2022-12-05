import 'package:flutter/material.dart';
import 'package:flutter_navegator_drawer/pages/homes.dart';
import 'package:flutter_navegator_drawer/pages/battery.dart';
import 'package:flutter_navegator_drawer/pages/settings.dart';

void main(){
  runApp(MaterialApp(
    home: const Home(),
    routes: <String, WidgetBuilder>{
      Settings.routeName: (BuildContext context) => const Settings(),
      Battery.routeName: (BuildContext context) => const Battery(),
    }
   )
  );
}
