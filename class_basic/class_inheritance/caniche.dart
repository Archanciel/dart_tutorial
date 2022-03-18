import 'animal.dart';

class Caniche extends Dog {
  static const String species = 'caniche';

  Caniche({required int age, required double weight})
      : super(age: age, weight: weight);

  @override
  void sleep() {
    // print('_age $_age years old $species'); // using _age not possible here
    //                                            since Caniche is defined in
    //                                            another file !
    print('Caniche: this.age ${this.age} years old $species $weight kg');
    print('calling super class sleep()');
    super.sleep();
  }
}
