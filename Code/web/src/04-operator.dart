import './outPut.dart';

class Operator {
  OutPut output;
  Operator(this.output);

  base() {
    // 与Java相同的运算符操作
    // int a = 1;
    // ++a;
    // a++;
    // var b = 1;
    // output.print(a == b); // false
    // output.print(a * b); // 3
    // bool real = false;
    // real ? output.print('real') : output.print('not real'); // not real
    // output.print(real && a == b); // false
    // output.print(real || a == 3); // true
    // output.print(a != 2); // true
    // output.print(a <= b); // false
    // var c = 9;
    // c += 10;
    // output.print("c = $c"); // c = 19
    // output.print(1 << 2); // 4

    // // 与Java不太一样的运算符操作

    // // is运算符用于判断一个变量是不是某个类型的数据
    // // is!则是判断变量不是某个类型的数据
    // var s = "hello";
    // output.print(s is String); // true
    // var num = 6;
    // output.print(num is! String); // true

    // ~/才是取整运算符，如果使用/则是除法运算，不取整
    int k = 1;
    int j = 2;
    output.print(k / j); // 0.5
    output.print(k ~/ j); // 0

    // as运算符类似于Java中的cast操作，将一个对象强制类型转换
    // final isEmpty = (1 as String).isEmpty; // BUG: 报错
    // output.print('isEmpty: $isEmpty');

    // ??=运算符 如果 ??= 运算符前面的变量为null，则赋值，否则不赋值
    var param1 = "hello", param2 = null;
    param1 ??= "world";
    param2 ??= "world";
    output.print("param1 = $param1"); // param1 = hello
    output.print("param2 = $param2"); // param2 = world

    // ?.运算符
    var str1 = "hello world";
    var str2 = null;
    output.print(str1?.length); // 11
    output.print(str2?.length); // null
    // output.print(str2.length); // BUG: 报错
  }

  run() {
    base();

    // 联机操作符
    new Person()
      ..eat()
      ..sleep()
      ..study();
  }
}

class Person {
  eat() {
    print("I am eating...");
  }

  sleep() {
    print("I am sleeping...");
  }

  study() {
    print("I am studying...");
  }
}
