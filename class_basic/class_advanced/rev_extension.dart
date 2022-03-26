extension on String {
  // if defined in a separate file, must be named.
  // Ex: extension StringToDouble on String
  double toDouble({double def = 0.0}) => double.tryParse(this) ?? def;
  int toInt({int def = 0}) => int.tryParse(this) ?? def;
}

void main() {
  final String doubleStr = '45.876';

  double d = double.tryParse(doubleStr) ?? 0;

  print(d); // 45.876
  print(doubleStr.toDouble(def: 1.0)); // 45.876
  print('abc'.toDouble()); // 0.0
  print('def'.toDouble(def: 1.0)); // 1.0

  print('10'.toInt());
}
