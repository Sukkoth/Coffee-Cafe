import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class CouponCodeInput extends StatelessWidget {
  const CouponCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey.shade300,
      ),
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Promo Code",
                hintStyle: Typo.style(
                  color: MyColors.shade4,
                  fontWeight: FontWeight.w600,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: MyColors.primary,
            ),
            child: Center(
              child: Text(
                'Apply',
                style: Typo.style(
                  fontSize: Typo.header5,
                  fontWeight: FontWeight.w700,
                  color: MyColors.shade1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
