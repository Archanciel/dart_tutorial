Future<void> main() async { // void main() async { ok aswell !
  print('main: start');

  final String order =
      await Future<String>.delayed(Duration(seconds: 2), () => 'RISTRETTO');
  print('order ready after 2 sec $order');
  print('main end');
}

