import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: MyDialog(),
  ));
}

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

enum DialogAction {
  yes,
  no
}

class _MyDialogState extends State<MyDialog> {
  String _inputValue = "";

  final TextStyle textStyle = const TextStyle(
      color: Colors.black,
      fontSize: 25.0,
    );   

  void _alertResult(DialogAction action){
    // ignore: avoid_print
    print("Tu Seleccion es $action");
  }

  void _showAlert (String value){
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FloatingActionButton(onPressed: () { _alertResult(DialogAction.yes);}, child: const Text("Yes"),),
        FloatingActionButton(onPressed: () {_alertResult(DialogAction.no);}, child: const Text("No"),),
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
      appBar: AppBar(
        title:const  Text("AlertDialog Widget"),
        titleTextStyle: textStyle,
        backgroundColor: Colors.amberAccent,
        shadowColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            TextField(
              decoration: const InputDecoration(
                hintText: "Insert Text"
              ),
              onChanged: (String value) {_onChanged(value);},
            ),
            ElevatedButton(
              child: const Text("View Alert"),
              onPressed: () {_showAlert(_inputValue);},
            )
          ]
        ),
      ),
    );    
  }
}

