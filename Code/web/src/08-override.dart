import './outPut.dart';

class Override {
  OutPut output;
  Override(this.output);

  run() {
    Vector v1 = new Vector(1, 2);
    Vector v2 = new Vector(3, 4);
    (v1 - v2).printVec(); // -2, -2
    (v1 + v2).printVec(); // 4, 6
  }
}

class Vector {
  num x, y;
  Vector(this.x, this.y);
  // 重载 +
  Vector operator +(Vector v) => new Vector(x + v.x, y + v.y);
  // 重载 -
  Vector operator -(Vector v) => new Vector(x - v.x, y - v.y);

  printVec() {
    print("x: $x, y: $y");
  }
}
