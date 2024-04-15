import 'package:coffe_shop/widgets/category/categories.dart';
import 'package:coffe_shop/widgets/home_page/search_bar.dart';
import 'package:coffe_shop/widgets/product/product_list.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppSearchBar(),
          const SizedBox(
            height: 20,
          ),
          // BannerList(),
          Categories(),
          const ProductsList(),
        ],
      ),
    );
  }
}
