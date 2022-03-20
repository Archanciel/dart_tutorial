import 'dart:math';

abstract class Shape {
//static Shape fromJson(Map<String, Object> classMap) {
  factory Shape.fromJson(Map<String, Object> classMap) {
    final type = classMap['type'];

    switch (type) {
      case 'Square':
        {
          final side = classMap['side'];
          if (side is double) {
            return Square(side: side);
          }
          ;

          throw UnsupportedError('side must be double');
        }
      case 'Circle':
        {
          final radius = classMap['radius'];
          if (radius is double) {
            return Circle(radius: radius);
          }
          ;

          throw UnsupportedError('radius must be double');
        }
      default:
        throw UnimplementedError('type $type is not a Shape implementation');
    }
  }

  double get area;
}

class Square implements Shape {
  double _side;

  Square({required double side}) : _side = side;

  @override
  double get area => _side * _side;

  @override
  String toString() => 'Square';
}

class Circle implements Shape {
  double _radius;

  Circle({required double radius}) : _radius = radius;

  @override
  double get area => pi * _radius * _radius;

  @override
  String toString() => 'Circle';
}

void main() {
  final List jsonShapeLst = [
    {
      'type': 'Square',
      'side': 10.0,
    },
    {
      'type': 'Circle',
      'radius': 7.5,
    },
    {
      'type': 'Triangle',
      'radius': 7.5,
    },
  ];

  final Iterable<Shape> shapeIter = jsonShapeLst.map((e) => Shape.fromJson(e));

  shapeIter.forEach(
      (element) => print('${element.toString()} area: ${element.area}'));
}
