import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/categroy_controller.dart';
import 'package:coffe_shop/controllers/index_pages_controller.dart';
import 'package:coffe_shop/widgets/product/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsList extends StatelessWidget {
  final bool some;
  ProductsList({super.key, this.some = true});

  final CategoryController controller = Get.find<CategoryController>();
  final IndexPageController indexController = Get.find<IndexPageController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.getSelectedCategory?.name ?? "Popular",
                    style: Typo.style(
                      fontSize: Typo.header3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  some
                      ? TextButton(
                          onPressed: () {},
                          style: const ButtonStyle(),
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  indexController.setPage(2);
                                },
                                style: const ButtonStyle(
                                  padding: MaterialStatePropertyAll(
                                    EdgeInsets.zero,
                                  ),
                                ),
                                child: Text(
                                  "View all",
                                  style: Typo.style(
                                    color: MyColors.primary,
                                    fontSize: Typo.header6,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: MyColors.primary,
                              )
                            ],
                          ),
                        )
                      : Container()
                ],
              ),
              GridView.builder(
                  itemCount: some
                      ? (controller.getSelectedCategory?.getMenu?.length ?? 0) >
                              4
                          ? 4
                          : (controller.getSelectedCategory?.getMenu?.length ??
                              0)
                      : controller.getSelectedCategory?.getMenu?.length ?? 0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                  ),
                  itemBuilder: (context, index) {
                    return ProductItem(
                      item: controller.getSelectedCategory!.getMenu![index],
                    );
                  })
            ],
          ),
        );
      },
    );
  }
}
