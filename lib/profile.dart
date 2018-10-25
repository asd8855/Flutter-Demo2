import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:
            AppBar(title: Text('Profile', style: TextStyle(fontSize: 17.0))),
        body: _profilePageWidget());
  }

  Widget _profilePageWidget() {
    return new Center(child: new Text('Profile'));
  }

  @override
  bool get wantKeepAlive => true;
}
