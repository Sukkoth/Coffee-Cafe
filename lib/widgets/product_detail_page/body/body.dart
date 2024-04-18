import 'package:coffe_shop/models/menu_item.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/buttons.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/customize.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/description.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/title.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  final MenuItem item;
  const ProductDetailsBody({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          ProductDetailsBodyHeader(name: item.name),
          const SizedBox(
            height: 25,
          ),
          ProductDetailsBodyDescription(description: item.description),
          ProductCustomizer(),
          const SizedBox(
            height: 25,
          ),
          ProductDetailsButtons(id: item.id)
        ],
      ),
    );
  }
}
