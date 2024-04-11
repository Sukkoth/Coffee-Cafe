import 'package:coffe_shop/pages/auth/reset_password.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/pages/auth/forgot_password_page.dart';
import 'package:coffe_shop/pages/auth/login_page.dart';
import 'package:coffe_shop/pages/auth/register_page.dart';
import 'package:coffe_shop/pages/auth/verification_page.dart';
import 'package:coffe_shop/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

final _routes = [
  GetPage(name: Routes.login, page: () => const LoginPage()),
  GetPage(name: Routes.register, page: () => const RegisterPage()),
  GetPage(name: Routes.forgotPassword, page: () => const ForgotPasswordPage()),
  GetPage(name: Routes.verification, page: () => const VerificationPage()),
  GetPage(name: Routes.resetPassword, page: () => const ResetPasswordPage()),
  GetPage(name: Routes.home, page: () => const HomePage()),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,
      getPages: _routes,
    );
  }
}
