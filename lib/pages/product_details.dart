import 'package:coffe_shop/widgets/product_detail_page/body/body.dart';
import 'package:coffe_shop/widgets/product_detail_page/detail_header.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailHeader(),
            ProductDetailsBody(),
          ],
        ),
      ),
    );
  }
}
