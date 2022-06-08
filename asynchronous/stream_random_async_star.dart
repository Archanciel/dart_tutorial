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
  bool first = true;

  streamSecDelays.listen((event) {
    if (first) {
      print('${i++}: printed after $event seconds');
      first = false;
    } else {
      print('${i++}: printed after next $event seconds');
    }
  });

  print('main end printed before obtaining streamed delays');
}
