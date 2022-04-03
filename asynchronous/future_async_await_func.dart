Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 2), () {
//      throw UnsupportedError('out of coffee');
      return 'ristretto';
    });

// void main() async { // ok aswell !
Future<void> main() async {
  print('main: start');

  final String order = await fetchUserOrder();
  print('order ready after 2 sec $order');
  print('main end');
}
