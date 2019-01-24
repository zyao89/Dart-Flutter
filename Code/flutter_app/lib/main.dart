import 'package:flutter/material.dart';
import 'package:flutter_app/Demo01_words.dart' as Demo01; // Hello World
import 'package:flutter_app/Demo02_words.dart' as Demo02; // 有状态组件
import 'package:flutter_app/Demo03_listview.dart' as Demo03; // List View
import 'package:flutter_app/Demo04_favorite.dart' as Demo04; // 收藏模式
import 'package:flutter_app/Demo05_route.dart' as Demo05; // 路由
import 'package:flutter_app/Demo06_theme.dart' as Demo06; // 主题色
import 'package:flutter_app/Demo07_GestureDetector.dart' as Demo07; // 手势
import 'package:flutter_app/Demo08_Image.dart' as Demo08; // 图片
import 'package:flutter_app/Demo09_Button.dart' as Demo09; // 按钮
import 'package:flutter_app/Demo10_MessageForm.dart' as Demo10; // MessageForm
import 'package:flutter_app/Demo11_Container.dart' as Demo11; // Container
import 'package:flutter_app/Demo12_Stack.dart' as Demo12; // Stack

final _router = {
  'Hello Word': (name) => Demo01.MyApp(),
  'Random Words': (name) => Demo02.MyApp(title: name),
  'List View': (name) => Demo03.MyApp(title: name),
  'Favorite': (name) => Demo04.MyApp(title: name),
  'Route': (name) => Demo05.MyApp(title: name),
  'Theme': (name) => Demo06.MyApp(title: name),
  'GestureDetector': (name) => Demo07.MyApp(),
  'Image': (name) => Demo08.MyWidget(),
  'Button': (name) => Demo09.MyWidget(),
  'MessageForm': (name) => Demo10.MyWidget(),
  'Container': (name) => Demo11.MyWidget(),
  'Stack': (name) => Demo12.MyWidget(),
};

void main() {
  final _routesMap = new Map<String, WidgetBuilder>();
  _router.forEach((name, value) {
    _routesMap['/$name'] = (BuildContext context) => value(name);
  });

  runApp(MaterialApp(
    home: MyAppHome(), // becomes the route named '/'
    routes: _routesMap,
  ));
}

class MyAppHome extends StatelessWidget {
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final tiles = _router.keys.map(
      (name) {
        return new ListTile(
          title: new Text(
            name,
            style: _biggerFont,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/$name');
          },
        );
      },
    );

    final divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new ListView(
          padding: const EdgeInsets.all(20.0),
          children: divided,
        ),
      ),
    );
  }
}
