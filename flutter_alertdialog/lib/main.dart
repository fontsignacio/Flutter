import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => _MyDialogState();
}

enum DialogAction {
  yes,
  no
}

class _MyDialogState extends State<MyDialog> {
  String _inputValue = "";

  final TextStyle textStyle = new TextStyle(
      color: Colors.black,
      fontSize: 40.0,
    );   

  void _alertResult(DialogAction action){
    print("Tu Seleccion es $action");
  }

  void _showAlert (String value){
    AlertDialog dialog = new AlertDialog(
      content: new Text(value),
      actions: <Widget>[
        new FloatingActionButton(onPressed: () { _alertResult(DialogAction.yes);}, child: new Text("Si"),),
        new FloatingActionButton(onPressed: () {_alertResult(DialogAction.no);}, child: new Text("No"),),
      ],
    );
    showDialog(context: context, builder: (context) => dialog);
  }

  void _onChanged(String value){
    setState(() {
      _inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Demo Alert Dialog"),
        titleTextStyle: textStyle,
        backgroundColor: Colors.yellowAccent,
        shadowColor: Colors.redAccent,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget> [
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Escribir aqui"
                ),
                onChanged: (String value) {_onChanged(value);},
              ),
              new ElevatedButton(
                child: new Text("Ver Alerta"),
                onPressed: () {_showAlert(_inputValue);},
              )
            ]
          ),
        ),
      ),
    );    
  }
}

