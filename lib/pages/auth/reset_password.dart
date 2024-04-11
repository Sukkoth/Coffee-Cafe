import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/reset_password/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

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
          'Create New Password',
          style: Typo.style(
              fontSize: Typo.header5,
              fontWeight: FontWeight.bold,
              color: MyColors.shade6),
        ),
      ),
      body: const ResetPasswordBody(),
    );
  }
}
