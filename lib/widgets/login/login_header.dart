import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Text(
        "Login to your Account",
        style: Typo.style(
            fontSize: Typo.header2,
            fontWeight: FontWeight.w600,
            color: MyColors.shade6),
      ),
    );
  }
}
