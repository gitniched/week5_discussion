import 'package:flutter/material.dart';
import 'package:my_app/item.dart';

class Cart with ChangeNotifier {
  List<Item> _items = [];

  get items => _items;

  void addItems(String name, double price, int qty) {
    _items.add(Item(name, price, qty));
    notifyListeners();
  }

  void removeItem(int i) {
    _items.removeAt(i);
    notifyListeners();
  }

  void removeAll() {
    _items.clear;
    notifyListeners();
  }
}
