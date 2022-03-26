import 'dart:io';

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => 'ristreto');
}

void main() {
  print('start');

  fetchUserOrder().then((value) => print(value));
  print('waiting');
}
