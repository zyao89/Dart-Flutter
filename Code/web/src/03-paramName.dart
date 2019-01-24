import './outPut.dart';

class ParamName {
  OutPut output;
  ParamName(this.output);

  sayHello({String name}) {
    output.print("hello, my name is $name");
  }

  sayHello2({name: String}) {
    output.print("hello, my name is $name");
  }

  sayHello3(String name, int age, [String hobby]) {
    // 位置参数可以有多个，比如[String a, int b]
    StringBuffer sb = new StringBuffer();
    sb.write("hello, this is $name and I am $age years old");
    if (hobby != null) {
      sb.write(", my hobby is $hobby");
    }
    output.print(sb.toString());
  }

  // 命名参数的默认值
  int add({int a, int b = 3}) {
    // 不能写成：int add({a: int, b: int = 3})
    return a + b;
  }

// 位置参数的默认值
  int sum(int a, int b, [int c = 3]) {
    return a + b + c;
  }

  // 匿名函数
  test(Function callback) {
    callback("hello");
  }

  // 封闭函数
  /// 返回一个把 addBy 作为参数的函数
  Function makeAdder(num addBy) {
    return (num i) => addBy + 1;
  }

  run() {
    // 打印 hello, my name is zhangsan
    sayHello(name: 'zhangsan');

    // 打印 hello, my name is wangwu
    sayHello2(name: 'wangwu');

    // hello, this is zhangsan and I am 20 years old
    sayHello3("zhangsan", 20);
    // hello, this is zhangsan and I am 20 years old, my hobby is play football
    sayHello3("zhangsan", 20, "play football");

    output.print(add(a: 3));
    output.print(sum(3, 4));

    test((param) {
      // 打印hello
      output.print(param);
    });

    // 封闭函数
    // 创建一个加2的函数
    var add2 = makeAdder(2);
    // 创建一个加4的函数
    var add4 = makeAdder(4);

    output.print(add2(3) == 5);
    output.print(add4(3) == 7);
  }
}
