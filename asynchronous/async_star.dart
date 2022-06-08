import 'dart:async';

void main() {
  Stream<String> messages = printNumbersDownAsync(5);
  print('main starting to listen...');
  messages.listen(print).onDone(() {
    print('messages.listen finished');
  });
//  await for (String s in messages) {
//    print(s);
//  };
// or
//  await messages.forEach(print);
  print('main ended');
}

Stream<String> printNumbersDownAsync(int n) async* {
  int k = n;
  print('generating delayed values started ...');
  while (k >= 0) {
    yield await loadMessageForNumber(k--);
  }
  print('generating delayed values ended ...');
}

Future<String> loadMessageForNumber(int i) async {
  await new Future.delayed(new Duration(seconds: 2));
  if (i % 2 == 0) {
    return '$i is even';
  } else {
    return '$i is odd';
  }
}
