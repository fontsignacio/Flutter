import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(){
  runApp(const MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  final _suggestions = <WordPair> [];
  final _saved = <WordPair>{};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Infinit ListView",),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: <Widget>[IconButton(onPressed: _pushSaved, icon: const Icon(Icons.list,))],
      ),
      body: _buildSuggestions(),
    );
  }

void _pushSaved(){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context){
      final tiles = _saved.map((pair){
          return ListTile(title: Text(pair.asPascalCase));
        }
      );

      final divided = ListTile.divideTiles(
        context: context,
        tiles: tiles
      ).toList();
      return Scaffold(
        appBar: AppBar(
          title: const Text("Favorites"),
          backgroundColor: Colors.red,
        ),
        body: ListView(children: divided),
      );
    })
  );
}

Widget _buildRow(WordPair pair) {
  final bool alreadySaved = _saved.contains(pair); 
  return ListTile(
    title: Text(pair.asPascalCase),
    trailing: Icon(
      alreadySaved ? 
      Icons.favorite: Icons.favorite_border, color: Colors.redAccent,),  
    
    onTap: () {
      setState(() {
        if(alreadySaved){
          _saved.remove(pair);
        }else{
          _saved.add(pair);   
        }
         
      });

    });  

}

  Widget _buildSuggestions(){
    return ListView.builder(
      itemBuilder: (context, i){
        if(i.isOdd) return const Divider();

        final index = i ~/2;

        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);  
      }
    );
  }
}