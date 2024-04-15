import 'package:coffe_shop/widgets/product_detail_page/body/buttons.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/customize.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/description.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/title.dart';
import 'package:flutter/material.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

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
          const ProductDetailsBodyHeader(),
          const SizedBox(
            height: 25,
          ),
          const ProductDetailsBodyDescription(),
          ProductCustomizer(),
          const SizedBox(
            height: 25,
          ),
          const ProductDetailsButtons()
        ],
      ),
    );
  }
}
