import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Payment Method",
              style: Typo.style(
                fontSize: Typo.header5,
                color: MyColors.shade7,
                fontWeight: FontWeight.w800,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.edit_note_sharp,
                color: MyColors.shade6,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.shade300,
              )),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/payment-cards/card.png',
                  width: 60,
                  height: 35,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Credit/Debit Card",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    color: MyColors.shade5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "/************6453",
                  style: Typo.style(
                    fontSize: Typo.header7,
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
