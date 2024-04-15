import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/cart_page/cart_item_details.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 160,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: MyColors.shade1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
            ),
          ]),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/images/products/coffee.png',
              height: 160,
              width: 160,
              fit: BoxFit.cover,
            ),
          ),
          const Expanded(
            child: CartItemDetails(),
          )
        ],
        //details
      ),
    );
  }
}
