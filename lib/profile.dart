import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:
            AppBar(title: Text('Profile', style: TextStyle(fontSize: 17.0))),
        body: _profilePageWidget());
  }

  Widget _profilePageWidget() {
    return new Container(
      // margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: new ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        new Container(
          width: 300.0,
          child: new Image.network(
            'https://ibw.bwnet.com.tw/image/pool/2017/11/fc17a963d78b9972bba94f6827f49d54.jpg',
          ),
        ),
        new Container(
          width: 300.0,
          child: new Image.network(
            'https://img1.gtimg.com/20/2063/206319/20631915_980x1200_292.jpg',
          ),
        ),
        new Container(
          width: 300.0,
          child: new Image.network(
            'http://nickchungphoto.weebly.com/uploads/5/3/8/3/53839029/4837605_orig.jpg',
          ),
        ),
        new Container(
          width: 300.0,
          child: new Image.network(
            'http://p1.img.cctvpic.com/photoworkspace/contentimg/2017/09/06/2017090609481566419.jpg',
          ),
        ),
      ]),
    );
  }
}
