import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/order_summary/order_detail_item.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Order Details",
          style: Typo.style(
            fontSize: Typo.header5,
            color: MyColors.shade7,
            fontWeight: FontWeight.w800,
          ),
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
          child: const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: Column(
              children: [
                OrderDetailItem(),
                OrderDetailItem(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
