void main() {
  // using conditional property access ?.

  String? value;
  print('value?.length -> ${value?.length}');
  print('value?.toUpperCase -> ${value?.toUpperCase()}');

  const String s = 'aa';
  print('value == null ? '' + s : value + s -> ${value == null ? '' + s : value + s}');

  // using default value ?? and ??= operators

  // print(value? + s); not possible
  print('value ?? \'\' + s -> ${value ?? '' + s}');

  print('value ?? \'vide\' -> ${value ?? 'vide'}');

  String? ss = value;
  ss ??= 'VIDE';
  print(ss);

  Map<String, double> mm = {'one': 1.0, 'two': 2.0};
  double sum = mm['one'] ?? 0.0 + (mm['not exist'] ?? 0.0); // parenthesis are required !
  print(sum);
}
