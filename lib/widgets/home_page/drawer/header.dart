import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class CDrawerHeader extends StatelessWidget {
  const CDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.primary,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/man.png',
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Sukkoth Teklu",
              style: Typo.style(
                  fontSize: Typo.header5,
                  fontWeight: FontWeight.w700,
                  color: MyColors.shade3),
            )
          ],
        ),
      ),
    );
  }
}
