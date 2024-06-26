import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Please enter your email address to recieve a verification code",
              textAlign: TextAlign.center,
              style: Typo.style(
                  fontSize: Typo.header5,
                  fontWeight: FontWeight.w600,
                  color: MyColors.shade5),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const CTextInput(label: "Email", hint: "Enter your email"),
          const SizedBox(
            height: 30,
          ),
          CButton(
              text: "Continue",
              onPressed: () {
                Get.toNamed(Routes.verification);
              })
        ],
      ),
    );
  }
}
