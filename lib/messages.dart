import 'package:flutter/material.dart';
import 'login.dart';

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
    // return new Center(child: new Text('Messages'));
    return new Center(
        child: new RaisedButton(
            child: Text(
              '登录',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }));
  }
}
