import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailsBodyDescription extends StatelessWidget {
  const ProductDetailsBodyDescription({super.key});

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
          "Espresso, a concentrated coffee originating from Italy, is famed for its intense flavor and rich aroma. Brewed by forcing hot water through finely-ground coffee beans under high pressure, it yields a small but potent shot of coffee. The hallmark of a well-made espresso is its golden-brown \"crema,\" a creamy layer that forms on top of the shot, indicating freshness and quality.",
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
