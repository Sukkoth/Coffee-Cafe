import 'package:coffe_shop/controllers/cart_controller.dart';
import 'package:coffe_shop/widgets/cart_page/cart_item.dart';
import 'package:coffe_shop/widgets/cart_page/cart_summary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            GetX<CartController>(builder: (controller) {
              return ListView.builder(
                itemCount: controller.cart.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CartItem(
                    cartItem: controller.cart[index],
                  );
                },
              );
            }),
            const CartSummary()
          ],
        ),
      ),
    );
  }
}
