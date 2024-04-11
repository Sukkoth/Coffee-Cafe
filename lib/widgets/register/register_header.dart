import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Text(
        "Create new Account",
        style: Typo.style(
            fontSize: Typo.header2,
            fontWeight: FontWeight.w600,
            color: MyColors.shade6),
      ),
    );
  }
}
