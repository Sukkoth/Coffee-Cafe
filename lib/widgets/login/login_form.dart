import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:coffe_shop/widgets/login_socials/login_socials.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CTextInput(
          label: "Email",
          hint: "Enter your email",
        ),
        const SizedBox(
          height: 15,
        ),
        const CTextInput(
          label: "Password",
          hint: "Enter your password",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                    value: true,
                    activeColor: MyColors.primary,
                    onChanged: (val) {
                      print(val);
                    }),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Remember me",
                    style: Typo.style(
                      color: MyColors.shade5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.forgotPassword);
                },
                child: Text(
                  "Forgot Password?",
                  style: Typo.style(
                      color: MyColors.primary,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        CButton(
          onPressed: () {},
          text: "Sign Up",
        ),
        const SizedBox(
          height: 20,
        ),
        const LoginSocials(),
      ],
    );
  }
}
