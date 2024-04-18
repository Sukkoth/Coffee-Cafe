import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/cart_controller.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsButtons extends StatelessWidget {
  final String id;
  const ProductDetailsButtons({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Price",
                style: Typo.style(
                  fontSize: Typo.header6,
                  color: MyColors.shade5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "\$4.5",
                style: Typo.style(
                  fontSize: Typo.header2,
                  color: MyColors.shade8,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: CButton(
            text: "Add To Order",
            onPressed: () {
              Get.find<CartController>().addToCart(id);
            },
          ))
        ],
      ),
    );
  }
}
