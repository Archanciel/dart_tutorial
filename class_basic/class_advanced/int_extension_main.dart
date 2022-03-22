import 'int_extension.dart';

void main() {
  String intStr = '123';
  int? i = int.tryParse(intStr);

  // but how can I add a strToIntOrNull() method to the String class ?

  // using extension !!

  int? ii = '123'.strToIntOrNull();
  print(ii); // 123
}
