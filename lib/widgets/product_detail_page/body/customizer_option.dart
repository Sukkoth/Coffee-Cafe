import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/utils/helpers.dart';
import 'package:flutter/material.dart';

class CutomizerOption extends StatelessWidget {
  final String option;
  const CutomizerOption({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColors.primary,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 2,
      ),
      margin: const EdgeInsets.only(right: 8),
      child: Text(
        Helpers.capitalizeWord(option),
        style: Typo.style(
          fontSize: Typo.header6,
          fontWeight: FontWeight.w700,
          color: MyColors.primary,
        ),
      ),
    );
  }
}
