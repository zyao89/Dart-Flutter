import './outPut.dart';

class Enums {
  OutPut output;
  Enums(this.output);

  run() {
      output.print(Color.red);
      output.print(Color.green);
      output.print(Color.blue);
  }
}

enum Color { red, green, blue }
