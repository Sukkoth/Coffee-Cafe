import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/app_bars/secondary_app_bar.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/payment_method/top_nav.dart';
import 'package:flutter/material.dart';

class ConfirmOrderPage extends StatelessWidget {
  const ConfirmOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.shade2,
        appBar: SecondaryAppBar(title: "Confirm Order"),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const PaymentTopNav(complete: true),
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/success.png',
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Your order has been placed successfully",
                              textAlign: TextAlign.center,
                              style: Typo.style(
                                fontSize: Typo.header3,
                                color: MyColors.shade8,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Your items has been placed and is on it's way to being proceeded",
                              textAlign: TextAlign.center,
                              style: Typo.style(
                                fontSize: Typo.header6,
                                color: MyColors.shade4,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
              CButton(text: "Track", onPressed: () {}),
            ],
          ),
        ));
  }
}
