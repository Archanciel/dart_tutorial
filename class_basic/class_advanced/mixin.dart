class Animal {
  void dye() => print('I am dead');
}

mixin Bird on Animal {
  // due to on, with Bird can only be applied to Animal
//                        class and sub-classes
  void fly() => print('mixin method: I am flying');
}

class Fish extends Animal with Bird {
  void swim() => print('I am swimming');
}

class SeeDog extends Fish {
  void bark() => print('waou, waou');
}

class Robot implements SeeDog {
  @override
  void bark() {
    print('robot waou, waou');
  }

  @override
  void dye() {
    print('robot not dead');
  }

  @override
  void fly() {
    print('robot flying');
  }

  @override
  void swim() {
    print('robot swimming');
  }
}

void main() {
//  Bird bird = Bird(); // mixins can't be instanciated compile error

  Fish fish = Fish();
  fish.dye();
  fish.swim();
  fish.fly();

  SeeDog seeDog = SeeDog();
  seeDog.swim();
  seeDog.fly();
  seeDog.bark();

  Robot robot = Robot();
  robot.dye();
  robot.swim();
  robot.fly();
  robot.bark();
}
