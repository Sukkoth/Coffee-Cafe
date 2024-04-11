import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const SocialButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: MyColors.shade2,
          border: Border.all(color: MyColors.shade4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
