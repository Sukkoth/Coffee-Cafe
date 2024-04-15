import 'package:get/get.dart';

class IndexPageController extends GetxController {
  int _activePageIndex = 0;

  int get activePageIndex => _activePageIndex;

  int? setPage(int index) {
    if (index < 4) {
      _activePageIndex = index;
      print("INDEX: $index, $_activePageIndex");
      update();
      return activePageIndex;
    } else if (index == 4) {
      Get.toNamed('/profile');
    }
    return null;
  }
}
