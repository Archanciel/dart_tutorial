void main() {
  functionOne();
  functionTwo();
  functionThree();
  functionFour();
}

void functionOne() {
  print('functionOne()');
}

Future<void> functionTwo() async {
  await Future.delayed(Duration(seconds: 4));

  print('functionTwo() printed after 4 seconds');
}

void functionThree() {
  print('functionThree()');
}

void functionFour() {
  print('functionFour()');
}
