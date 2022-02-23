void main() {
  const order1 = ['margherita', 'pepperoni', 'pineapple'];
  const order2 = ['margherita', 'pepperoni', 'vegetarian'];

  print('Total: \$${computeOrder(order1)}');
  print('Total: \$${computeOrder(order2)}');

  printSum(3, 10);
}

double computeOrder(List<String> order) {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  var total = 0.0;

  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }

  return total;
}

void printSum(int a, int b) => print(a + b);
