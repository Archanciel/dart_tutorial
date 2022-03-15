import 'animal.dart';

class Caniche extends Dog {
  static const String species = 'caniche';

  Caniche({required int age}) : super(age: age);

  @override
  void sleep() {
    // print('_age $_age years old $species'); // using _age not possible here
    print('super.age ${super.age} years old $species');
    print('this.age ${this.age} years old $species');
    super.sleep();
  }
}
