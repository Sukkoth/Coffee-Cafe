import 'package:coffe_shop/models/menu_item.dart';
import 'package:coffe_shop/models/sub_category.dart';
import 'package:uuid/uuid.dart';

final _generateId = const Uuid().v4;

class Category {
  final String id;
  final String name;
  final String? imageUrl;
  List<SubCategory>? subCategories;
  Category(
      {required this.name,
      this.imageUrl = "/categories/coffee.png",
      this.subCategories = const []})
      : id = _generateId();

  //!getters
  List<SubCategory>? get getSubCategories => subCategories;

  List<MenuItem>? get getMenu {
    List<MenuItem> menuItems = [];

    if (getSubCategories != null && getSubCategories!.isNotEmpty) {
      for (var subCategory in getSubCategories!) {
        menuItems.addAll(subCategory.getMenuItems);
      }
    }
    return menuItems;
  }
}
