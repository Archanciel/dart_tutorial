abstract class Shape {
  double get side;
  double get area;
}

class Square implements Shape {
  final double _side;

  Square({required double side}) : _side = side;

  double get side => _side;
  double get area => _side * _side;

  bool operator ==(covariant Square obj) {
    return obj.side == _side;
  }
}

class Animal {
  String _color;
  double _weight;

  Animal(String color, double weight)
      : _color = color,
        _weight = weight;

  set color(String color) => _color = color;

  void describe() {
    print('animal $_color, $_weight kg');
  }
}

class Dog extends Animal {
  double _size;

  // Dog(String color, double weight, this._size) : super(color, weight);
  Dog(String color, double weight, double size)
      : _size = size, // using comma
        super(color, weight); // super ctor must be at last position

  void describe() {
    super.describe();
    print('size $_size cm');
  }
}

void main() {
  Animal dog = Dog('braun', 25, 60);

  dog.describe();
  Shape sh = Square(side: 10);
  Shape sq = Square(side: 10);

  print(sh.side);
  print(sh.area);
  print(sh == sq);
}
