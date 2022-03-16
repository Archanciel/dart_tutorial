class Parent {
  final String _name;

  Parent({required String name}) : _name = name;

  String get name => _name;

  String description() => 'Parent $_name';
}
