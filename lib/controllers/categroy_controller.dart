import 'package:get/get.dart';

class CategoryController extends GetxController {
  int? selectedCategoryIndex = 0;

  final List _categories = [
    {"id": 1, "title": "Coffee", "imageUrl": "/categories/coffee.png"},
    {"id": 2, "title": "Juices", "imageUrl": "/categories/juice.png"},
    {"id": 3, "title": "Cakes", "imageUrl": "/categories/cake.png"},
    {"id": 4, "title": "Pastries", "imageUrl": "/categories/pastry.png"},
    {"id": 5, "title": "Tea", "imageUrl": "/categories/tea.png"},
    {"id": 10, "title": "Cookies", "imageUrl": "/categories/cookies.png"}
  ];

  List get categories => _categories;

  void setSelectedCategory(int index) {
    if (selectedCategoryIndex == index) {
      selectedCategoryIndex = null;
    } else {
      selectedCategoryIndex = index;
    }

    update();
  }
}
