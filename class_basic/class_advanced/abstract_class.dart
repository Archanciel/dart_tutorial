import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValue() => print('area: $area perimeter: $perimeter');
}

class Quadrat extends Shape {
  // if implements is used instead of extends, this causes 'Missing concrete 
  // implementation of Shape.printValue' compile error !
  final double _side;

  Quadrat({required double side}) : _side = side;

  double get area => _side * _side;
  double get perimeter => 4 * _side;

}

class Circle extends Shape {
  // if implements is used instead of extends, this causes 'Missing concrete 
  // implementation of Shape.printValue' compile error !
  final double _radius;

  Circle({required double radius}) : _radius = radius;

  double get area => pi * _radius * _radius;
  double get perimeter => 2 * pi * _radius;

}

void main() {
  final List<Shape> shapeLst = [Quadrat(side: 10), Circle(radius: 10)];

  shapeLst.forEach((element) {
    element.printValue();
  });
}
