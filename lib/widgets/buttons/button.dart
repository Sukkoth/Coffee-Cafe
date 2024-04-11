import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: MyColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: Typo.style(
                color: MyColors.shade1,
                fontWeight: FontWeight.w600,
                fontSize: Typo.header5),
          ),
        ),
      ),
    );
  }
}
