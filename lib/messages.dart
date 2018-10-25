import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => new _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:
            AppBar(title: Text('Messages', style: TextStyle(fontSize: 17.0))),
        body: _messagesPageWidget());
  }

  Widget _messagesPageWidget() {
    return new Center(child: new Text('Messages'));
  }

}
