Future<String> createOrderMessage() {
  Future<String>  order = fetchUserOrder();

  return order;
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

void main() async {
  print('Fetching user order...');
  await createOrderMessage().then((value) => print('Your order is $value'));
}