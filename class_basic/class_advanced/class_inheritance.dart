class Animal {
  int age;

  Animal({required this.age});

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);
}

void main() {
  Dog dog = Dog(age: 3);

  dog.sleep();
}
