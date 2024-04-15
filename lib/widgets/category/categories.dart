import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/categroy_controller.dart';
import 'package:coffe_shop/widgets/category/category_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  final CategoryController controller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Category",
            style: Typo.style(
              fontSize: Typo.header3,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 110,
            child: GetBuilder<CategoryController>(builder: (_) {
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      item: controller.categories[index],
                      active: controller.selectedCategoryIndex == index,
                      onTap: () {
                        controller.setSelectedCategory(index);
                      },
                    );
                  });
            }),
          )
        ],
      ),
    );
  }
}
