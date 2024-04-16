import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/app_bars/secondary_app_bar.dart';
import 'package:coffe_shop/widgets/payment_method/card_info.dart';
import 'package:coffe_shop/widgets/payment_method/card_item.dart';
import 'package:coffe_shop/widgets/payment_method/top_nav.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.shade2,
        appBar: SecondaryAppBar(title: "Payment Method"),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                //top nav
                PaymentTopNav(),
                //cards list
                Wrap(
                  runSpacing: 15,
                  spacing: 15,
                  children: [
                    PaymentCardItem(index: 0, image: 'card'),
                    PaymentCardItem(index: 1, image: 'paypal'),
                    PaymentCardItem(index: 2, image: 'visa'),
                    PaymentCardItem(index: 3, image: 'cash'),
                    PaymentCardItem(index: 4, button: true),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                PaymentCardInfo(),
              ],
            ),
          ),
        ));
  }
}
