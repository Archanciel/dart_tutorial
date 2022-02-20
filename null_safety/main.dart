void main(List<String> arguments) {
  List<String?> ls = ['coucou', 'hello', null];

  for (String? elem in ls) {
    print('${elem == null ? '' : elem.toUpperCase()}');
  }

  for (String? elem in ls) {
    print('${elem?.toUpperCase()}');
  }
}
