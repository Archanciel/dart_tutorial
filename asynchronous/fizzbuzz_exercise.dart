import 'dart:math';

Stream<String> streamGen(int max) async* {
  for (int i = 1; i <= 15; i++) {
    await Future<void>.delayed(Duration(milliseconds: 500));
    if (i % 3 == 0) {
      yield 'fizz';
    } else if (i % 5 == 0) {
      yield 'buzz';
    } else {
      yield i.toString();
    }
  }
}

Future<void> main() async {
  print('main start');

  Stream<String> stringStream = streamGen(15);

  print('stringStream created');

  await stringStream.forEach((element) {
    print(element);
  });

  print('main end');
}
