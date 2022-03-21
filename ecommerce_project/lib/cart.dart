import 'package:test/item.dart';

class Cart {
  final List<Item> _itemLst = [];

  void add(Item item) => _itemLst.add(item);
  bool remove(Item item) => _itemLst.remove(item);

  double get total {
    double total = 0.0;

    for (Item item in _itemLst) {
      total += item.total;
    }

    return total;
  }

  String get items {
    final String itemLst = _itemLst.map((e) => e.toString()).join('\n');

    return '------------\n$itemLst\nTotal: \$${total.toStringAsFixed(2)}\n------------';
  }
}
