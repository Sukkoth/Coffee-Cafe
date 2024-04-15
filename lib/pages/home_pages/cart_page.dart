import 'package:coffe_shop/widgets/cart_page/cart_item.dart';
import 'package:coffe_shop/widgets/cart_page/cart_summary.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                CartItem(),
                CartItem(),
              ],
            ),
            const CartSummary()
          ],
        ),
      ),
    );
  }
}
