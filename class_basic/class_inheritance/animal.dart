class AnimalPos {
  int _age;

  AnimalPos(this._age);

  void sleep() => print('sleep');
}

class Tiger extends AnimalPos {
  Tiger({required int age}) : super(age);

  @override
  void sleep() {
    print('$_age years old tiger');
    super.sleep();
  }
}

class Animal {
  int _age;

  Animal({required int age}) : _age = age; // named parm can't start with
  //                                          underscore, unlike in AnimalPos
  //                                          above. So {required this._age}                                            
  //                                          is not possible !

  void sleep() => print('sleep\n');

  int get age => _age;
}

class Dog extends Animal {
  static const String species = 'dog';

  Dog({required int age}) : super(age: age);

  @override
  void sleep() {
    print('_age $_age years old $species');
    print('super.age ${super.age} years old $species');
    print('this.age ${this.age} years old $species');
    super.sleep();
  }
}
