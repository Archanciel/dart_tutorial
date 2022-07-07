Future<void> printOrderMessage() async {
  var order = await fetchUserOrder();
  print('Awaiting user order...');
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  for (int i = 0; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
  await printOrderMessage(); // msg will be printed after 4 seconds
}
