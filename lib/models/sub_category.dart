import 'package:coffe_shop/models/menu_item.dart';
import 'package:uuid/uuid.dart';

final _generateId = const Uuid().v4;

class SubCategory {
  final String id;
  final String name;
  final String? description;
  final List<MenuItem>? items;
  final String? categoryId;
  SubCategory({
    required this.name,
    this.description,
    this.items,
    this.categoryId,
  }) : id = _generateId();

  List<MenuItem> get getMenuItems {
    return [...(items ?? [])];
  }
}
