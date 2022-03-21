class Point {
  int _x;
  int _y;

  Point({required int x, required int y})
      : _x = x,
        _y = y;

  int get x => _x;
  set x(int x) => _x = x;

  int get y => _y;
  set y(int y) => _y = y;

  bool operator ==(covariant Point obj) {

    return _x == obj.x && _y == obj.y;
  }
}

void main() {
  Point p1 = Point(x: 2, y: 5);
  Point p2 = Point(x: 3, y: 2);
  Point p3 = Point(x: 2, y: 5);

  print(p1 == p2); // false
  print(p1 == p3); // true
//print(p1 == 'abc'); // false
}
