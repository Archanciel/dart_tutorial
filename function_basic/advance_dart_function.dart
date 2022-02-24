void main() {
  final myFunc = (String name, int age) => 'I am $name born in ${2022 - age}';

  print(myFunc('Béa', 58));

  executeFunc(myFunc, 'JP', 62);
}
void executeFunc(String Function(String, int) passedFunc, String theName, int theAge) {
  print(passedFunc(theName, theAge));
}
