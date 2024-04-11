import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/login/login_body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          'Sign in',
          style: Typo.style(
              fontSize: Typo.header5,
              fontWeight: FontWeight.bold,
              color: MyColors.shade6),
        ),
      ),
      body: const SingleChildScrollView(child: LoginBody()),
    );
  }
}
