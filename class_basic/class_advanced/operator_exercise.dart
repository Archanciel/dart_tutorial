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

  // covariant not required since + operator not implemented in Object class
  Point operator +(Point point) => Point(x: _x + point.x, y: _y + point.y);

  Point operator *(int val) => Point(x: _x * val, y: _y * val);

  String desc() => 'x: $_x, y: $_y';

  @override
  int get hashCode => super.hashCode;
}

void main() {
  Point p1 = Point(x: 2, y: 5);
  Point p2 = Point(x: 3, y: 2);

  print(p1.desc()); // x: 2, y: 5

  print((p1 + p2).desc()); // x: 5, y: 7
  print((p1 * 5).desc()); // x: 10, y: 25

  print(p1.desc()); // x: 2, y: 5
}
