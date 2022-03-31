import 'dart:math';

Stream<int> getRandomValues(int streamLength) async* {
  Random randomSecond = Random();
  int i = 0;

  while (i < streamLength) {
    int nextInt = randomSecond.nextInt(5);
    await Future.delayed(Duration(seconds: nextInt), (() => i++));
    yield nextInt;
  }
}

void main() {
  print('main start');

  Stream<int> streamInt = getRandomValues(10);

  print('stream created');

  streamInt.listen((event) => print('$event seconds'));
}
