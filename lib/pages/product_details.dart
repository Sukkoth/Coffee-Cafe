import 'package:coffe_shop/controllers/categroy_controller.dart';
import 'package:coffe_shop/models/menu_item.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/body.dart';
import 'package:coffe_shop/widgets/product_detail_page/detail_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final CategoryController controller = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    String itemId = Get.parameters['product_id'] as String;
    MenuItem item = controller.getAllMenuItems
        .firstWhere((element) => element.id == itemId);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductDetailHeader(),
            ProductDetailsBody(item: item),
          ],
        ),
      ),
    );
  }
}
