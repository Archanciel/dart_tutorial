class TwoVal {
  double _one;
  double _two;

  TwoVal({double one = 1, double two = 2})
      : _one = one,
        _two = two;

  String desc() => '$_one, $_two';
}

class ThreeValNoSecond extends TwoVal {
  double _three;

  // super class second value is not present in the constructor
  // and so is set to its 2 default value
  ThreeValNoSecond({double one = 10, double three = 3})
      : _three = three,
        super(one: one);

  String desc() => super.desc() + ', $_three';
}

class ThreeVal extends TwoVal {
  double _three;

  ThreeVal({double one = 1, double two = 20, double three = 3})
      : _three = three,
        super(one: one, two: two);

  String desc() => super.desc() + ', $_three';
}

void main() {
  TwoVal threeValNoSecond_1 = ThreeValNoSecond();
  TwoVal threeValNoSecond_2 = ThreeValNoSecond(three: 300);
  TwoVal threeValNoSecond_3 = ThreeValNoSecond(three: 333, one: 111.1111);

  print('\ThreeValNoSecond\n');

  print(threeValNoSecond_1.desc()); // 10.0, 2.0, 3.0
  print(threeValNoSecond_2.desc()); // 10.0, 2.0, 300.0
  print(threeValNoSecond_3.desc()); // 111.1111, 2.0, 333.0

  TwoVal threeVal_1 = ThreeVal();
  TwoVal threeVal_2 = ThreeVal(three: 300);
  TwoVal threeVal_3 = ThreeVal(three: 333, one: 111.1111);

  print('\nThreeVal\n');

  print(threeVal_1.desc()); // 1.0, 20.0, 3.0
  print(threeVal_2.desc()); // 1.0, 20.0, 300.0
  print(threeVal_3.desc()); // 111.1111, 2.0, 333.0
}
