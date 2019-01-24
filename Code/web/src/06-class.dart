import './outPut.dart';

class Clazz {
  OutPut output;
  Clazz(this.output);

  run() {
    final p = new Person("zhangsan", 20, "male");
    p.sayHello(); // hello, this is zhangsan, I am 20 years old, I am a male
    p.age = 50;
    p.gender = "female";
    p.sayHello(); // hello, this is zhangsan, I am 50 years old, I am a female
  }
}

class Person {
  String name;
  int age;
  String gender;

  Person(this.name, this.age, this.gender);
//   等同于
//   Person(String name, int age, String gender) {
//     this.name = name;
//     this.age = age;
//     this.gender = gender;
//   }

  sayHello() {
    print("hello, this is $name, I am $age years old, I am a $gender");
  }
}
