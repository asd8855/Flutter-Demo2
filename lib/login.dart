import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new TextField(
                controller: _controller,
                maxLength: 11,
                keyboardType: TextInputType.number,
                onChanged: (String string) {
                  print(string);
                },
                decoration: new InputDecoration(
                    icon: Icon(Icons.phone_iphone),
                    // prefixIcon: Icon(Icons.exposure_neg_2),
                    // suffixIcon: Icon(Icons.explicit),
                    hintText: '请输入手机号',
                    hintStyle:
                        TextStyle(fontSize: 17.0, color: Color(0xFF999999))),
              ),
              new TextField(
                controller: _controller,
                maxLength: 6,
                keyboardType: TextInputType.number,
                onChanged: (String string) {
                  print(string);
                },
                decoration: new InputDecoration(
                    icon: Icon(Icons.lock),
                    // prefixIcon: Icon(Icons.exposure_neg_2),
                    // suffixIcon: Icon(Icons.explicit),
                    hintText: '请输入密码',
                    hintStyle:
                        TextStyle(fontSize: 17.0, color: Color(0xFF999999))),
              ),
              new Container(
                margin: EdgeInsets.only(top: 65.0),
                child: new RaisedButton(
                  color: Color(0xFFFF5252),
                  child: new Text(
                    '登录',
                    style: TextStyle(fontSize: 17.0, color: Colors.white),
                  ),
                  onPressed: () {
                    print('登录');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
