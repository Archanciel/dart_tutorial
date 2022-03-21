import 'package:test/cart.dart';
import 'package:test/product.dart';
import 'package:test/item.dart';

void main() {
//  tryProductItemCart();

}

void tryProductItemCart() {
  Product.addToSet(id: 1, name: 'apples', price: 1.6);
  Product.addToSet(id: 2, name: 'bannas', price: 0.7);
  Product.addToSet(id: 3, name: 'courgettes', price: 1.0);
  Product.addToSet(id: 4, name: 'grapes', price: 2.0);
  Product.addToSet(id: 5, name: 'mushrooms', price: 0.8);
  Product.addToSet(id: 6, name: 'potatoes', price: 1.5);
  
  Product.productSet.forEach((element) {
    print(element.toString());
  });
  
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
  
  Cart cart = Cart();
  
  cart.add(it1);
  cart.add(it2);
  
  print(cart.total);
}
