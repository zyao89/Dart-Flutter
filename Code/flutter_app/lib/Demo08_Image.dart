import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network('http://localhost:8998/public/1.png',
      width: 200.0,
      height: 150.0,
    );
  }
}