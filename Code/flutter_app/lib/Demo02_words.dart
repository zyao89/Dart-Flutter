import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  MyApp({ this.title });

  final String title;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            title,
          ),
        ),
        body: new Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(
      wordPair.asPascalCase,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 32.0,
          fontWeight: FontWeight.bold
      ),
    );
  }
}
