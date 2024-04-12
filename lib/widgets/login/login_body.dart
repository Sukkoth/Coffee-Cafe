import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/login/login_form.dart';
import 'package:coffe_shop/widgets/login/login_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginHeader(),
          const SizedBox(
            height: 15,
          ),
          const LoginForm(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Don\'t have account',
                    style: Typo.style(
                        color: MyColors.shade5,
                        fontWeight: FontWeight.w600,
                        fontSize: Typo.header5),
                  )),
              TextButton(
                  onPressed: () {
                    Get.offAndToNamed(Routes.home);
                  },
                  child: Text(
                    "Sign up?",
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
