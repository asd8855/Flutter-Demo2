import 'package:flutter/material.dart';

class HomeDetailsPage extends StatefulWidget {
  @override
  _HomeDetailsPageState createState() => new _HomeDetailsPageState();
}

class _HomeDetailsPageState extends State<HomeDetailsPage> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeDetail', style: TextStyle(fontSize: 17.0)),
        ),
        body: _homeDetailPageWidget());
  }

  Widget _homeDetailPageWidget() {
    return new Center(child: new Text('HomeDetail'));
  }
}
