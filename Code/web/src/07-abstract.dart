import './outPut.dart';

class Abstract {
  OutPut output;
  Abstract(this.output);

  run() {
    final dog = new Dog();
    //   final Dog dog = new Dog();
    dog.greet();
    dog.doSomething();
  }
}

abstract class Animal {
  // 抽象方法，没有方法体，需要子类去实现
  void doSomething();
  // 普通的方法
  void greet() {
    print("hello world!");
  }
}

class Dog extends Animal {
  // 实现了父类的抽象方法
  @override
  void doSomething() {
    print("I'm doing something...");
  }
}
