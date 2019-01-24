import './outPut.dart';

class T {
  OutPut output;
  T(this.output);

  run() {
    var names = new List<String>();
    names.addAll(['Seth', 'Kathy', 'Lars']);

    // names.add(42); // BUG: 编译报错.

    output.print(names);
  }
}
