import 'dart:async';

main() async {
  Stream<String> messages = printNumbersDownAsync(5);
  print('starting to listen...');
  messages.listen(print).onDone(() {
    print('done');
  });
//  await for (String s in messages) {
//    print(s);
//  };
// or
//  await messages.forEach(print);
  print('end of main');
}

Stream<String> printNumbersDownAsync(int n) async* {
  int k = n;
  print('started generating values...');
  while (k >= 0) {
    yield await loadMessageForNumber(k--);
  }
  print('ended generating values...');
}

Future<String> loadMessageForNumber(int i) async {
  await new Future.delayed(new Duration(milliseconds: 50));
  if (i % 2 == 0) {
    return '$i is even';
  } else {
    return '$i is odd';
  }
}
