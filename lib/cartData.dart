import 'package:flutter_tutorial/model/item.dart/item.dart';

class CartModel {
  static final cartmode = CartModel._Single();
  CartModel._Single();
  factory CartModel() => cartmode;

  late MyItems _myItems;

  MyItems get myItems => _myItems;

  set myItems(MyItems i) {
    _myItems = i;
  }

  List<num> _ids = [];

  List<Item> get it => _ids.map((id) => _myItems.getById(id)).toList();

  num get TP => it.fold(0, (t, c) => t + c.price);

  void add(Item i) {
    _ids.add(i.id);
  }

  void remove(Item i) {
    _ids.remove(i.id);
  }
}
