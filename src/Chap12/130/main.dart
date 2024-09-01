import 'dart:math';

abstract class Shape {
  double getArea();
}

class Square extends Shape {
  int _side;

  Square._init(this._side);

  factory Square(int side) {
    if (side <= 0) {
      throw ArgumentError("正方形の辺は正の数である必要があります。");
    }
    return Square._init(side);
  }

  @override
  double getArea() {
    return _side * _side * 1.0;
  }
}

class Circle extends Shape {
  int _radius;

  Circle._init(this._radius);

  factory Circle(int radius) {
    if (radius <= 0) {
      throw ArgumentError("円の半径は正の数である必要があります。");
    }
    return Circle._init(radius);
  }

  @override
  double getArea() {
    return _radius * _radius * pi;
  }
}

void main() {
  var square = Square(10);
  var circle = Circle(10);
  print("Squareの面積は${square.getArea()}");
  print("Circleの面積は${circle.getArea()}");
}
