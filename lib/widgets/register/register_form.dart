import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:coffe_shop/widgets/login_socials/login_socials.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CTextInput(
          label: "Name",
          hint: "Enter your full name",
        ),
        const SizedBox(
          height: 15,
        ),
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
          obscure: true,
        ),
        Row(
          children: [
            Checkbox(
                value: true,
                activeColor: MyColors.primary,
                onChanged: (val) {}),
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
