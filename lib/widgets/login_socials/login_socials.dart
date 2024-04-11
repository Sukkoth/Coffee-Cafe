import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/login_socials/social_button.dart';
import 'package:flutter/material.dart';

class LoginSocials extends StatelessWidget {
  const LoginSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              color: MyColors.shade4,
              height: 1.2,
              width: 80,
            ),
            Text(
              "Or",
              style: Typo.style(
                  color: MyColors.shade5, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              color: MyColors.shade4,
              height: 1.2,
              width: 80,
            ),
          ],
        ),
        SocialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/search.png',
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Sign in with Google",
                style: Typo.style(
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                    fontSize: Typo.header5),
              )
            ],
          ),
          onPressed: () {},
        ),
        SocialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/facebook.png',
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Sign in with Facebook",
                style: Typo.style(
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                    fontSize: Typo.header5),
              )
            ],
          ),
          onPressed: () {},
        ),
        SocialButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/apple.png',
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Sign in with Apple",
                style: Typo.style(
                    color: MyColors.shade4,
                    fontWeight: FontWeight.w600,
                    fontSize: Typo.header5),
              )
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
