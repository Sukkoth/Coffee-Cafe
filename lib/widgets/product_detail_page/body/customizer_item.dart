import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/utils/helpers.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/customizer_option.dart';
import 'package:flutter/material.dart';

class CustomizerItem extends StatelessWidget {
  final String title;
  final List options;
  const CustomizerItem({super.key, required this.title, required this.options});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Helpers.capitalizeWord(title),
            style: Typo.style(
              fontSize: Typo.header5,
              fontWeight: FontWeight.w700,
              color: MyColors.shade5,
            ),
          ),
          Row(
            children: [
              ...options
                  .map((option) => CutomizerOption(option: option))
                  .toList()
            ],
          )
        ],
      ),
    );
  }
}
