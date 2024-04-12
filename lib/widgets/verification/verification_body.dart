import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/verification/verification_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Enter the code we just sent you on your email address",
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
          const VerificationForm(),
          const SizedBox(
            height: 60,
          ),
          CButton(
              text: "Verify",
              onPressed: () {
                Get.offAndToNamed(Routes.resetPassword);
              })
        ],
      ),
    );
  }
}
