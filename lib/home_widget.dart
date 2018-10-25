import 'package:flutter/material.dart';
import 'home.dart';
import 'messages.dart';
import 'profile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    new HomePage(),
    new MessagesPage(),
    new ProfilePage()
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped, // new
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.mail), title: new Text('Messages')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Profile')),
        ],
      ),
      body: IndexedStack(
        index:_currentIndex,
        children: _children
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
