class Person {
  final String _name;
  final int _yearBorn;

  const Person({required String name, required int yearBorn})
      : _name = name,
        _yearBorn = yearBorn;

  factory Person.fromJson(Map<String, Object> personData) {
    final name = personData['name'];
    final yearBorn = personData['yearBorn'];

    if (name is String && yearBorn is int) {
      return Person(name: name, yearBorn: yearBorn);
    }

    throw StateError('invalid name $name or yearBorn $yearBorn');
  }

  Map<String, Object> toJson(Person person) {
    return {
      'name': person._name,
      'yearborn': person._yearBorn,
    };
  }

  String description() => 'I am $_name ${2022 - _yearBorn} years old';
}

void main() {
  final List jsonPersonLst = [
    {
      'name': 'Jean-Pierre',
      'yearBorn': 1960,
    },
    {
      'name': 'Béatrice',
      'yearBorn': 1964,
    },
    {
      'name': 'Tamara',
      'yearBorn': 2002,
    },
  ];

  Iterable<Person> iter = jsonPersonLst.map((e) => Person.fromJson(e));

  iter.forEach((element) {
    print(element.description());
    print(element.toJson(element));
  });
}
