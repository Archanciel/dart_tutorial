void main() {
  List<String> lst = ['coucou', 'bonjour', 'well !'];

  String lines = lst.map((e) => e.toUpperCase()).join('\n');

  print(lines);
}
