import 'package:flutter/cupertino.dart';
import 'package:lab03/data.dart';

class CartProvider extends ChangeNotifier {
  final Set<Item> _item = {};

  Set<Item> get items => _item;

  double get total =>
      _item.fold(0.0, (previousvalue, item) => previousvalue + item.price);

  bool isItemAdded(Item item) {
    return _item.contains(item);
  }

  void addItem(Item item) {
    _item.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _item.remove(item);
    notifyListeners();
  }
}
