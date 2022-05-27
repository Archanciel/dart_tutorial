Future<void> printOrderMessage() async {
  var order = await fetchUserOrder();
  print('Awaiting user order...');
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
//  countSeconds(5);

  for (int i = 0; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
  await printOrderMessage(); // msg will be printed after 4 seconds
}

void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    // creates 4 instances of Future with the 4 Duration's of 1, 2, 3 and 4
    // seconds
    var f = Future.delayed(Duration(seconds: i), () => print(i));
    // print(identityHashCode(f));
  }
}
