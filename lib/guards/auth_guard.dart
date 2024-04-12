import 'package:coffe_shop/controllers/auth_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  final authController = Get.find<AuthController>();

  @override
  RouteSettings? redirect(String? route) {
    return authController.isLoggedIn ? null : RouteSettings(name: Routes.login);
  }
}
