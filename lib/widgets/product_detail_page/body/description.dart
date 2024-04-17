import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailsBodyDescription extends StatelessWidget {
  final String? description;
  const ProductDetailsBodyDescription({super.key, this.description = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: Typo.style(
            fontSize: Typo.header5,
            fontWeight: FontWeight.w700,
            color: MyColors.shade6,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          description ?? "",
          textAlign: TextAlign.justify,
          style: Typo.style(
            fontSize: Typo.header6,
            fontWeight: FontWeight.w600,
            color: MyColors.shade4,
          ),
        )
      ],
    );
  }
}
