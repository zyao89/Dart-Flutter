import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var flatBtn = FlatButton(
      onPressed: () => print('FlatButton pressed'),
      child: Text('FlatButton'),
    );
    var raisedButton = RaisedButton(
      onPressed: () => print('RaisedButton pressed'),
      child: Text('RaisedButton'),
    );

    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[flatBtn, raisedButton],
        ),
      ),
    );
  }
}
