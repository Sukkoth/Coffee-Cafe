import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class PaymentTopNav extends StatelessWidget {
  const PaymentTopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.primary,
            ),
            child: Icon(
              Icons.location_on_rounded,
              color: MyColors.shade1,
            ),
          ),
          Expanded(
            child: Divider(
              color: MyColors.primary,
              thickness: 1.5,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.primary,
            ),
            child: Icon(
              Icons.credit_card_rounded,
              color: MyColors.shade1,
            ),
          ),
          Expanded(
            child: Divider(
              color: MyColors.primary,
              thickness: 1.5,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.shade1,
                border: Border.all(
                  color: MyColors.primary,
                )),
            child: Icon(
              Icons.check_circle,
              color: MyColors.primary,
            ),
          )
        ],
      ),
    );
  }
}
