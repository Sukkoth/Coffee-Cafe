import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/product_detail_page/body/customizer_item.dart';
import 'package:flutter/material.dart';

class ProductCustomizer extends StatelessWidget {
  ProductCustomizer({super.key});

  final List<Map> _customOptions = [
    {
      'title': 'size',
      'options': [
        'small',
        'regualar',
        'large',
      ]
    },
    {
      'title': 'sugar',
      'options': [
        'normal',
        'less',
        'no',
      ]
    },
    {
      'title': 'ice',
      'options': [
        'normal',
        'less',
        'no',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          "Customize",
          style: Typo.style(
            fontSize: Typo.header5,
            fontWeight: FontWeight.w700,
            color: MyColors.shade6,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ..._customOptions
            .map((customOption) => CustomizerItem(
                title: customOption["title"], options: customOption['options']))
            .toList()
      ],
    );
  }
}
