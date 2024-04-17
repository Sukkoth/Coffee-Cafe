import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailsBodyHeader extends StatelessWidget {
  final String name;

  const ProductDetailsBodyHeader({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Typo.style(
                fontSize: Typo.header3,
                fontWeight: FontWeight.w700,
                color: MyColors.shade7,
              ),
            ),
            Text(
              "With Milk",
              style: Typo.style(
                fontSize: Typo.header6,
                fontWeight: FontWeight.w600,
                color: MyColors.shade4,
              ),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star_outline_rounded,
              size: 35,
              color: MyColors.shade5,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "4.8",
              style: Typo.style(
                fontSize: Typo.header4,
                fontWeight: FontWeight.w700,
                color: MyColors.shade7,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              "(520)",
              style: Typo.style(
                fontSize: Typo.header5,
                fontWeight: FontWeight.w500,
                color: MyColors.shade4,
              ),
            )
          ],
        )
      ],
    );
  }
}
