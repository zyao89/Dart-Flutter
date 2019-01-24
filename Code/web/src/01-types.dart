import './outPut.dart';

/**
- numbers
- strings
- booleans
- lists(或者是arrays)
- maps
- runes（UTF-32字符集的字符）
- symbols
 */
class Types {
  OutPut output;
  Types(this.output);

  numbers() {
    // numbers
    var a = 0;
    int b = 1;
    double c = 0.1;

    output.print('a=$a, b=$b, c=$c');
  }

  strings() {
    // strings
    var s1 = 'hello';
    String s2 = "world";

    output.print('s1=$s1, s2=$s2');
  }

  booleans() {
    // booleans
    var real = true;
    bool isReal = false;

    output.print('real=$real, isReal=$isReal');
  }

  lists() {
    // lists
    var arr = [1, 2, 3, 4, 5];
    List<String> arr2 = ['hello', 'world', "123", "456"];
    List<dynamic> arr3 = [1, true, 'haha', 1.0];

    output.print('arr=$arr, arr2=$arr2, arr3=$arr3');
  }

  maps() {
    // maps
    var map = new Map();
    map['name'] = 'zhangsan';
    map['age'] = 10;
    Map m = new Map();
    m['a'] = 'a';

    output.print('map=$map, m=$m');
  }

  runes() {
    //runes，Dart 中 使用runes 来获取UTF-32字符集的字符。String的 codeUnitAt and codeUnit属性可以获取UTF-16字符集的字符
    var clapping = '\u{1f44f}';

    output.print('clapping=$clapping');
  }

  symbols() {
    // symbols
    final b = (#s == new Symbol("s")); // true

    output.print('#s == new Symbol("s")=$b');
  }

  dynamics() {
    Object o = 'string';
    o = 42;
    o.toString(); // 我们只能调用Object 支持的方法

    dynamic obj = 'string';
    obj['foo'] = 4; // 可以编译通过，但在运行时会抛出 NoSuchMethodError
  }

  run() {
    this.numbers();
    this.strings();
    this.booleans();
    this.lists();
    this.maps();
    this.runes();
    this.symbols();
  }
}
