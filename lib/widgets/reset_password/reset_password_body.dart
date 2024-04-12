import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Your new password must be different from previously used password",
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
          const CTextInput(label: "New Password", hint: "Enter your password"),
          const SizedBox(
            height: 15,
          ),
          const CTextInput(
              label: "Confirm New Password", hint: "Confirm your password"),
          const SizedBox(
            height: 30,
          ),
          CButton(
              text: "Save",
              onPressed: () {
                Get.offNamedUntil(
                  Routes.login,
                  (route) => Get.currentRoute == Routes.login,
                );
              })
        ],
      ),
    );
  }
}
