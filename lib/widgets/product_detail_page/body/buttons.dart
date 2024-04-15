import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailsButtons extends StatelessWidget {
  const ProductDetailsButtons({super.key});

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
          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              color: MyColors.primary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                "Add To Order",
                style: Typo.style(
                  fontSize: Typo.header4,
                  color: MyColors.shade1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
