import './outPut.dart';

class Static {
  OutPut output;
  Static(this.output);

  run() {
    Cons.sayHello(); // hello, this is zhangsan
    print(Cons.name); // zhangsan
  }
}

// 类的静态成员变量和静态成员方法
class Cons {
  static const name = "zhangsan";
  static sayHello() {
    print("hello, this is ${Cons.name}");
  }
}
