import './outPut.dart';

class Mixins {
  OutPut output;
  Mixins(this.output);

  run() {
    C c = new C();
    c.a(); // A's a()
    c.b(); // B's b()
  }
}

class A {
  a() {
    print("A's a()");
  }
}

class B {
  b() {
    print("B's b()");
  }
}

// 使用with关键字，表示类C是由类A和类B混合而构成
class C = A with B;
