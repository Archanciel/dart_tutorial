Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 2), () {
      throw UnsupportedError('out of coffee');
//      return 'ristretto';
    });

// void main() async { // ok aswell !
Future<void> main() async {
  print('main: start');

  final String order =
      await Future<String>.delayed(Duration(seconds: 2), () => 'RISTRETTO');
  print('first order $order');

  try {
    print(await fetchUserOrder());
  } on UnsupportedError catch (e) {
    print('problem: ${e.message}');
  }

  print('complete');
}