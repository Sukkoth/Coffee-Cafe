import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class OrderDetailItem extends StatelessWidget {
  const OrderDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //child1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Espresso x2",
                    style: Typo.style(
                      fontSize: Typo.header5,
                      color: MyColors.shade7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "(Regular)",
                    style: Typo.style(
                      fontSize: Typo.header7,
                      color: MyColors.shade4,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "with steamed milk, chocolate",
                style: Typo.style(
                  fontSize: Typo.header6,
                  color: MyColors.shade4,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          //chil2
          Text(
            "\$9.50",
            style: Typo.style(
              fontSize: Typo.header5,
              color: MyColors.shade5,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
