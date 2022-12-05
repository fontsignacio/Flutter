import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context){

    var header = const DrawerHeader(child: Text("Settings"));
    var info = const AboutListTile(
      // ignore: sort_child_properties_last
      child: Text("Information App"),
      applicationName: "Demo Drawer",
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v1.0.0",
      icon: Icon(Icons.info),
    );

    // ignore: no_leading_underscores_for_local_identifiers
    ListTile _getItem(Icon icon, String description, String route){
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: (() {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        }),
      ); 
    }
    ListView listView = ListView(children: <Widget>[
      header,
      _getItem(const Icon(Icons.settings), "Setting","/setting"),
      _getItem(const Icon(Icons.home), "Homepage","/"),
      _getItem(const Icon(Icons.battery_charging_full), "Battery","/battery"),
      info
    ],
      
    );

    return Drawer(
      child: listView,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Menu"),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: _getDrawer(context,)
    );
    
  }
}
