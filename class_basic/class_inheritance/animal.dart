class AnimalPos {
  // Uses constructor with positional arguments
  int _age;

  AnimalPos(this._age);

  void sleep() => print('is sleeping');
}

class TigerPos extends AnimalPos {
  // Uses constructor with positional arguments
  String _color;

  TigerPos(int age, color)
      : _color = color, // using comma
        super(age); // super ctor must be at last position

  @override
  void sleep() {
    print('$_age years old tiger colored $_color');
    super.sleep();
  }
}

class Animal {
  // Uses constructor with named arguments
  int _age;

  Animal({required int age}) : _age = age; // named parm can't start with
  //                                          underscore, unlike in AnimalPos
  //                                          above. So {required this._age}
  //                                          is not possible !

  void sleep() => print('animal is sleeping\n');

  int get age => _age;
}

class Dog extends Animal {
  // Uses constructor with named arguments
  static const String species = 'dog';
  double _weight;

  Dog({required int age, required double weight})
      : _weight = weight,
        super(age: age);

  double get weight => _weight;

  @override
  void sleep() {
    print('Dog: _age $_age years old $species $_weight kg');
    print('super.age ${super.age} years old $species');
    print('this.age ${this.age} years old $species');
    super.sleep();
  }
}
