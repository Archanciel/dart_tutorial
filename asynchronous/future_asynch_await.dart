Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 2), () {
//      throw UnsupportedError('out of coffee');
      return 'ristretto';
    });

void main() async {
  print('main: start');

  final String order = await fetchUserOrder();
  print('first order $order');

  print(await fetchUserOrder());

  print('complete');
}
