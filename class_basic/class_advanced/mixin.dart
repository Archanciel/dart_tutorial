class Animal {
  void dye() => print('I am dead');
}

class Bird {
  void fly() => print('I am flying');
}

class Fish extends Animal with Bird {
  void swim() => print('I am swimming');
}

void main() {
  Bird bird = Bird();

  bird.fly();

  Fish fish = Fish();
  fish.swim();
  fish.fly();
}
