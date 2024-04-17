import 'package:coffe_shop/data/data.dart';
import 'package:coffe_shop/models/category.dart';
import 'package:coffe_shop/models/menu_item.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  String? selectedCategoryId = data[0].id;

  List<Category> get categories => data;

  void setSelectedCategory(String id) {
    if (selectedCategoryId == id) {
      selectedCategoryId = null;
    } else {
      selectedCategoryId = id;
    }
    update();
  }

  Category? get getSelectedCategory => categories.firstWhereOrNull(
      (element) => element.id == (selectedCategoryId ?? data[0].id));

  List<MenuItem> get getAllMenuItems {
    List<MenuItem> allMenuItems = [];
    for (var category in data) {
      if (category.subCategories != null) {
        for (var subCategory in category.subCategories!) {
          if (subCategory.items != null) {
            allMenuItems.addAll(subCategory.items!);
          }
        }
      }
    }
    return allMenuItems;
  }
}
