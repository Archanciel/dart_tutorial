typedef myFuncType = String Function(String, int);
//typedef String myFuncType(String name, int age); //other definition way

final frFunc = (String name, int age) => 'Je suis $name, né en ${2022 - age}';
final enFunc = (String name, int age) => 'I am $name, born in ${2022 - age}';
final deFunc = (String name, int age) => 'Ich bin $name, geboren in ${2022 - age}';

void main() {
  const String name = 'Jean-Pierre';
  const int age = 62;

  presentation(frFunc, name, age);
  presentation(enFunc, name, age);
  presentation(deFunc, name, age);
}

void presentation(myFuncType pres, String name, int age) {
  print(pres(name, age));
}
