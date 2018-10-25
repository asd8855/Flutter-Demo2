import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'home_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('_HomePageState');
  }

  final _suggestions = <WordPair>[];

  final _saveSuggestions = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Home', style: TextStyle(fontSize: 17.0)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.library_books),
              onPressed: _pushHomeDetail,
            ),
          ],
        ),
        body: _homePageWidget());
  }

  Widget _homePageWidget() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return new Divider();
          }
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final isSelected = _saveSuggestions.contains(pair);

    return new ListTile(
      title: Text(pair.asPascalCase, style: TextStyle(fontSize: 16.0)),
      trailing: Icon(
        isSelected ? Icons.favorite : Icons.favorite_border,
        color: isSelected ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (isSelected) {
            _saveSuggestions.remove(pair);
          } else {
            _saveSuggestions.add(pair);
          }
        });
      },
    );
  }

  void _pushHomeDetail() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeDetailsPage()));
  }
}
