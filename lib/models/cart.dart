import 'package:coffe_shop/models/menu_item.dart';
import 'package:uuid/uuid.dart';

final _generateId = const Uuid().v4;

enum CartQuantityOptions { increment, decrement }

class Cart {
  final String id;
  final MenuItem menuItem;
  int quantity;

  Cart({
    required this.menuItem,
    this.quantity = 1,
  }) : id = _generateId();
}
