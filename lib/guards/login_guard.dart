import 'package:coffe_shop/controllers/auth_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMiddleware extends GetMiddleware {
  final authController = Get.find<AuthController>();

  @override
  RouteSettings? redirect(String? route) {
    if (authController.isLoggedIn) {
      // Check if user is logged in
      if (authController.isLoggedIn) {
        // Redirect to home if already logged in
        return RouteSettings(name: Routes.home);
      }
    }
    return null; // No redirection for other routes
  }
}
