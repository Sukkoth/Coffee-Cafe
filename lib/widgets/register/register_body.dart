import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/register/register_form.dart';
import 'package:coffe_shop/widgets/register/register_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RegisterHeader(),
          const SizedBox(
            height: 15,
          ),
          RegisterForm(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Already have an account?',
                    style: Typo.style(
                        color: MyColors.shade5,
                        fontWeight: FontWeight.w600,
                        fontSize: Typo.header5),
                  )),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.login);
                  },
                  child: Text(
                    "Sign In?",
                    style: Typo.style(
                        color: MyColors.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: Typo.header5,
                        decoration: TextDecoration.underline),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
