import 'dart:math';

Stream<int> getStreamInt(int streamLength) async* {
  int i = 0;

  while (i < streamLength) {
    await Future.delayed(Duration(milliseconds: 1), (() => i++));
    yield i;
  }
}

void main() async {
  print('main start');

  Stream<int> streamInt = getStreamInt(500);

  print('stream created');
  print('executing Stream ...');

  int i = 0;
  DateTime now = DateTime.now();

  await for (final value in streamInt) {
    i = value;
  }
  final int timeDiff = DateTime.now().difference(now).inMilliseconds;

  print(i);
  print(timeDiff);
  print('nain end');
}
