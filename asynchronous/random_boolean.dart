import 'dart:math';

void main() {
  final randomGenerator = Random();

  bool randomBoolean;
  for (int i = 0; i < 5; i++) {
    randomBoolean = randomGenerator.nextBool();
    print(randomBoolean);
  }
}
