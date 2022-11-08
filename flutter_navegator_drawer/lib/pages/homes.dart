import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context){

    var header = new DrawerHeader(child: new Text("Ajustes"));
    var info = new AboutListTile(
      child: new Text("Informacion App"),
      applicationName: "Demo de un Drawer",
      applicationIcon: new Icon(Icons.favorite),
      applicationVersion: "v1.0.0",
      icon: new Icon(Icons.info),
    );

    ListTile _getItem(Icon icon, String description, String route){
      return new ListTile(
        leading: icon,
        title: new Text(description),
        onTap: (() {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        }),
      ); 
    }
    ListView listView = new ListView(children: <Widget>[
      header,
      _getItem(new Icon(Icons.settings), "Configuracion","/configuracion"),
      _getItem(new Icon(Icons.home), "Pagina Principal","/"),
      _getItem(new Icon(Icons.battery_charging_full), "Bateria","/bateria"),
      info
    ],
      
    );

    return new Drawer(
      child: listView,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Menu"),
      ),
      drawer: _getDrawer(context,)
    );
    
  }
}
