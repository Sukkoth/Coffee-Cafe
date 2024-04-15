import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/cart_page/coupon_code_input.dart';
import 'package:flutter/material.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Discount Coupon",
          style: Typo.style(
            fontSize: Typo.header4,
            color: MyColors.shade7,
            fontWeight: FontWeight.w700,
          ),
        ),
        const CouponCodeInput(),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Subtotal",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "\$19.50",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Delivery Charges",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "\$05.00",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Discount",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "\$02.00",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: MyColors.shade4,
              thickness: 0.5,
              indent: 100,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Total",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade6,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  "\$25.50",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade6,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        CButton(text: "Checkout", onPressed: () {}),
      ],
    );
  }
}
