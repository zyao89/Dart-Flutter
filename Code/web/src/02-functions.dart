import './outPut.dart';

class Functions {
  OutPut output;
  Functions(this.output);

  // 声明返回值
  int add(int a, int b) {
    return a + b;
  }

  // 不声明返回值
  add2(int a, int b) {
    return a + b;
  }

  // =>是return语句的简写
  add3(a, b) => a + b;

  run() {
    final add = this.add(1, 2);
    output.print('add=$add');
    final add2 = this.add2(1, 2);
    output.print('add2=$add2');
    final add3 = this .add3(1, 2);
    output.print('add3=$add3');
  }
}
