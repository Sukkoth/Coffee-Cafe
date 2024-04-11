import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/forgot_password/forgot_password_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.shade2,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: MyColors.shade6,
        ),
        backgroundColor: MyColors.shade2,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: Typo.style(
              fontSize: Typo.header5,
              fontWeight: FontWeight.bold,
              color: MyColors.shade6),
        ),
      ),
      body: const ForgotPasswordBody(),
    );
  }
}
