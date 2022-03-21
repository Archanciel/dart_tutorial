import 'package:test/product.dart';

class Item {
  final Product _product;
  int _quantity;

  Item({required Product product, required int quantity})
      : _product = product,
        _quantity = quantity;

  double get total => _quantity * _product.price;

  String toString() =>
      '$_quantity x ${_product.name} \$${total.toStringAsFixed(2)}';
}

void main() {
  Product p1 = Product.addToSet(id: 1, name: 'banana', price: 0.3);
  Product p2 = Product.addToSet(id: 2, name: 'orange', price: 0.25);
  Product p3 = Product.addToSet(id: 3, name: 'apple', price: 0.2);
  Product p4 = Product.addToSet(id: 3, name: 'apple', price: 0.2); // since
  //                                Product extends Equatable, if a product
  //                                is already in the static product set, it
  //                                will not be added a second time.

  print(Product.productSet);
  print(Product.productMap);

  Item it1 = Item(
      product:
          Product.prod('b') ?? Product(id: -1, name: 'not exist', price: 0.0),
      quantity: 3);
  Item it2 = Item(
      product:
          Product.prod('a') ?? Product(id: -1, name: 'not exist', price: 0.0),
      quantity: 5);

  print(it1);
  print(it2);
}
