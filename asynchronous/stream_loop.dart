import 'dart:math';

Stream<int> getStreamInt(int streamLength) async* {
  // async* keyword to make a
//                                function that returns a bunch of future values
//                                one at a time. The results are wrapped in a
//                                Stream.
  int i = 0;

  while (i < streamLength) {
    await Future.delayed(Duration(milliseconds: 1), (() => i++));
    if (i % 100 == 0) {
      print(i);
    }
    yield i;
  }
}

void main() async {
  print('main start');
  print('creating stream');

  Stream<int> streamInt = getStreamInt(500);

  print('stream created');
  print('obtaining stream content ...');

  int i = 0;
  DateTime now = DateTime.now();

  await for (final value in streamInt) {
    i = value;
    if (i % 100 == 0) {
      print('obtained: $i');
    }
  }
  final int timeDiff = DateTime.now().difference(now).inMilliseconds;

  print(i);
  print(timeDiff);
  print('nain end');
}
