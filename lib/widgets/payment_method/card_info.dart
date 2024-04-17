import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:coffe_shop/widgets/payment_method/app_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentCardInfo extends StatelessWidget {
  const PaymentCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //card number
          CTextInput(
            label: 'Card number *',
            labelStyle: Typo.style(
              fontSize: Typo.header5,
              fontWeight: FontWeight.w600,
              color: MyColors.shade6,
            ),
            keyboardType: TextInputType.number,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 15,
            ),
            hint: "Enter your card number",
          ),
          const SizedBox(
            height: 15,
          ),
          const AppDatePicker(label: 'Expiry date *'),
          const SizedBox(
            height: 15,
          ),
          CTextInput(
            label: 'CVV *',
            labelStyle: Typo.style(
              fontSize: Typo.header5,
              fontWeight: FontWeight.w600,
              color: MyColors.shade6,
            ),
            keyboardType: TextInputType.number,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 15,
            ),
            hint: "CVV code here",
          ),

          const SizedBox(
            height: 50,
          ),
          //button
          CButton(
              text: "Pay Now",
              onPressed: () {
                Get.toNamed(Routes.order.summary);
              })
        ],
      ),
    );
  }
}
