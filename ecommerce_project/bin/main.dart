import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_project/cart.dart';
import 'package:ecommerce_project/product.dart';
import 'package:ecommerce_project/item.dart';

void main() {
//  tryProductItemCart();
  final String productLst = createProducts();
  final Cart cart = Cart();

  String? choice = '';

  while (choice != 'q') {
    stdout.write(
        'What do you want to do ? (v)iew items, (a)dd item, (c)heckout or (q)uit: ');
    choice = stdin.readLineSync(encoding: utf8);

    switch (choice) {
      case 'v':
        {
          print(cart.items);
          break;
        }
      case 'a':
        {
          final String? productKey = chooseProduct(productLst);
          if (productKey != null) {
            final Product? product = Product.productMap[productKey];
            if (product != null) {
              stdout.write('Enter quantity of ${product.namePrice}: ');
              final String? quantityStr = stdin.readLineSync(encoding: utf8);
              final int? quantity = int.tryParse(quantityStr ?? '0');
              if (quantity != null) {
                Item item = Item(product: product, quantity: quantity);
                cart.add(item);
                print(cart.items);
              }
            }
          }
          break;
        }
      case 'c':
        {
          stdout.write("\$${cart.total} to be payed in cash.\nEnter amount: ");
          String? amountStr = stdin.readLineSync(encoding: utf8);
          if (amountStr == null) {
            break;
          }
          double? amount = double.tryParse(amountStr);
          if (amount != null) {
            double total = cart.total;
            if (amount < total) {
              print('Amount too small. Payment not ok.');
              break;
            } else if (amount > total) {
              print('Payment ok. Amount returned: \$${(amount - total).toStringAsFixed(2)}');
            } else {
              print('Payment ok.');
            }
            choice = 'q';
          } else {
            break;
          }
          break;
        }
      case 'q':
        {
          break;
        }
      default:
        {
          break;
        }
    }
  }
}

String? chooseProduct(String productLst) {
  stdout.write('Available products\n$productLst\nYour choice: ');
  String? productKey = stdin.readLineSync(encoding: utf8);

  return productKey;
}

String createProducts() {
  Product.addToSet(id: 1, name: 'apples', price: 1.6);
  Product.addToSet(id: 2, name: 'bananas', price: 0.7);
  Product.addToSet(id: 3, name: 'courgettes', price: 1.0);
  Product.addToSet(id: 4, name: 'grapes', price: 2.0);
  Product.addToSet(id: 5, name: 'mushrooms', price: 0.8);
  Product.addToSet(id: 6, name: 'potatoes', price: 1.5);

  final String productLst =
      Product.productSet.map((e) => e.namePrice).join('\n');

  return productLst;
}

void tryProductItemCart() {
  createProducts();

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
