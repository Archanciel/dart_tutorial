import 'animal.dart';

class Cat extends Animal {
  static const String species = 'cat';

  Cat({required int age}) : super(age: age);

  @override
  void sleep() {
    // print('_age $_age years old $species'); // using _age not possible here
    print('Cat: super.age ${super.age} years old $species');
    print('this.age ${this.age} years old $species');
    super.sleep();
  }
}
