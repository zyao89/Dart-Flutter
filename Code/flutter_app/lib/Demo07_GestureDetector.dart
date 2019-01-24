import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Gesture();
  }
}

class Gesture extends StatefulWidget {
  @override
  createState() {
    return new GestureState();
  }
}

class GestureState extends State<Gesture> {

  var _text = 'Default!';

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        setState(() {
          _text = 'onTap!!';
        });
      },
      onDoubleTap: () {
        setState(() {
          _text = 'onDoubleTap!!';
        });
      },
      onLongPress: () {
        setState(() {
          _text = 'onLongPress!!';
        });
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
//        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text(_text),
        ),
      ),
    );
  }
}