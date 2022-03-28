import 'dart:io';

Future<String> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () {
//    throw UnsupportedError('out of coffee');
    return 'ristreto';
  });
}

void main() {
  print('main: start');

  String mainStr = 'main string';

  fetchUserOrder()
      .then((value) {
        mainStr = 'modified by fetchUserOrder() main string';
        print(value);
      })
      .catchError((error) => print(error))
      .whenComplete(() => print('complete'));

  print('main: waiting ...');

  print('first main: $mainStr');

  Future.delayed(Duration(seconds: 4), () => 'future 4 sec $mainStr')
      .then((value) => print(value));

  print('second main: $mainStr');
}
