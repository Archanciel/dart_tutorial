import 'package:equatable/equatable.dart';

class Product extends Equatable {
  /*
  Extending Equatable and overriding get hashCode and get props is required
  in order to be able to correctly add new Product instances to the static
  productSet. Otherwise, 2 products with same instance variable values would be
  added to the set since they would not be detected as being equal.
  */
  static Set<Product> productSet = {};
  static Map<String, Product> productMap = {};

  final int _id;
  final String _name;
  final double _price;

  const Product({
    required int id,
    required String name,
    required double price,
  })  : _id = id,
        _name = name,
        _price = price;

  factory Product.addToSet({
    required int id,
    required String name,
    required double price,
  }) {
    Product product = Product(id: id, name: name, price: price);
    productSet.add(product); // since Product extends Equatable, if a product
    //                          is already in the static product set, it will
    //                          not be added a second time.
    productMap[product.productKey] = product;

    return product;
  }

  @override
  String toString() => 'Prod id $_id, name $nameChoice, price $_price';

  @override
  int get hashCode => super.hashCode;

  @override
  List<Object?> get props => [_id, _name, _price];

  double get price => _price;
  String get nameChoice => '(${productKey})${_name.substring(1)}';
  String get productKey => _name.substring(0, 1);
  String get namePrice => '$nameChoice: \$ $price';
  String get name => _name;

  static Product? prod(String prodKey) => Product.productMap[prodKey];
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
}
