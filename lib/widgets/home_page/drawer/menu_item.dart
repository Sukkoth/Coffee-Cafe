import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String linkTo;
  const DrawerMenuItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.linkTo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: MyColors.shade5,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Typo.style(
                  fontWeight: FontWeight.w700,
                  color: MyColors.shade5,
                  fontSize: Typo.header6),
            )
          ],
        ),
      ),
    );
  }
}
