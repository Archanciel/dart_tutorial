import 'dart:math';

Stream<int> getRandomDelays(int streamLength) async* {
  Random randomSecond = Random();
  int i = 0;

  while (i < streamLength) {
    int nextSecDelay = randomSecond.nextInt(5);
    await Future.delayed(Duration(seconds: nextSecDelay), (() => i++));
    yield nextSecDelay;
  }
}

void main() {
  print('main start');

  Stream<int> streamSecDelays = getRandomDelays(10);

  print('stream of delays created');

  int i = 1;

  streamSecDelays.listen((event) {
    print('${i++}: printed after $event seconds');
  });

  print('nain end printed before obtaining streamed delays');
}
