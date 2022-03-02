class Person {
  Person({required this.name, required this.age, required this.height});

  final String name;
  final int age;
  final double height;

  String description() {
    return 'My name is $name. I am $age years old. I am $height meters tall';
  }
}

void main() {
  final Person jps =
      Person(name: 'Jean-Pierre Schnyder', age: 62, height: 1.82);
  final Person tamara = Person(name: 'Tamara Jagne', age: 20, height: 1.85);

  print(jps.description());
  print(tamara.description());
}
