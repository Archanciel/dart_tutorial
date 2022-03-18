import 'animal.dart';
import 'caniche.dart';
import 'cat.dart';

void main() {
  Dog dog = Dog(age: 3, weight: 21);
  dog.sleep();

  Cat cat = Cat(age: 1);
  cat.sleep();

  Caniche caniche = Caniche(age: 1, weight: 6.4);
  caniche.sleep();
}
